class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
 
  def search
    if params[:search].present?
      @dogs = Dog.search(params[:search])
    else
      @dogs = Dog.all
    end
  end

  def index
    @dogs = Dog.all
  end

  def show
    @cats = Cat.where(dog_id: @dog.id).order("created_at DESC")
  end

  def new
    @dog = current_user.dogs.build
  end

  def edit
  end

  def create
    @dog = current_user.dogs.build(dog_params)

    respond_to do |format|
      if @dog.save
        format.html { redirect_to @dog, notice: 'record was successfully created.' }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to @dog, notice: 'record was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog }
      else
        format.html { render :edit }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to dogs_url, notice: 'record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_dog
      @dog = Dog.find(params[:id])
    end

    def dog_params
      params.require(:dog).permit(:name)
    end
end