class CatsController < ApplicationController
  before_action :set_cat, only: [:show, :edit, :update, :destroy]
  before_action :set_dog
  before_action :authenticate_user!

  def new
    @cat = Cat.new
  end

  def edit
  end

  def create
    @cat = Cat.new(cat_params)
    @cat.user_id = current_user.id
    @cat.dog_id = @dog.id

    if @cat.save
      redirect_to @dog
    else
      render 'new'
    end
  end

   def update
     if @cat.update(cat_params)
      redirect_to @dog, notice: 'record was successfully updated.'
     else
      render action: 'edit'
      end  
  end

  def destroy
    @cat.destroy
    redirect_to @dog
  end

  private
    def set_cat
      @cat = Cat.find(params[:id])
    end

    def set_dog
      @dog = Dog.find(params[:dog_id])
    end

    def cat_params
      params.require(:cat).permit(:faculty,:subject,:IT1,:IT2,:IT3)
    end
end