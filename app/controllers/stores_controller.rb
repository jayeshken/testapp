class StoresController < ApplicationController
  before_action :set_store, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def search
    if params[:search].present?
      @stores = Store.search(params[:search])
    else
      @stores = Store.all
    end
  end

  def index
    @stores = Store.all
  end

  def show
    @items = Item.where(store_id: @store.id).order("created_at DESC")
  end

  def new
    @store = current_user.stores.build
  end

  def edit
  end

  def create
    @store = current_user.stores.build(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to @store, notice: 'store was successfully created.' }
        format.json { render :show, status: :created, loitemion: @store }
      else
        format.html { render :new }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to @store, notice: 'store was successfully updated.' }
        format.json { render :show, status: :ok, loitemion: @store }
      else
        format.html { render :edit }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @store.destroy
    respond_to do |format|
      format.html { redirect_to stores_url, notice: 'store was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_store
      @store = Store.find(params[:id])
    end

    def store_params
      params.require(:store).permit(:name)
    end
    
    def correct_user
      @store = current_user.pins.find_by(id: params[:id])
      redirect_to stores_path, notice: "Not authorized to edit this record" if @store.nil?
    end
end