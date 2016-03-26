class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :set_store
  before_action :authenticate_user!

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @item.store_id = @store.id

    if @item.save
      redirect_to @store
    else
      render 'new'
    end
  end

   def update
     if @item.update(item_params)
      redirect_to @store, notice: 'record was successfully updated.'
     else
      render action: 'edit'
      end  
  end

  def destroy
    @item.destroy
    redirect_to @store
  end

  private
    def set_item
      @item = Item.find(params[:id])
    end

    def set_store
      @store = Store.find(params[:store_id])
    end

    def item_params
      params.require(:item).permit(:faculty,:subject,:IT1,:IT2)
    end
end