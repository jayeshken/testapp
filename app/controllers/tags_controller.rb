class TagsController < ApplicationController
   before_action :set_tag, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!, except: [:index, :show]
   before_action :correct_user, only: [:edit, :update, :destroy]


  respond_to :html

  def index
    @tags = Tag.all
  end

  def show
  end

  def new
        @tag = current_user.tags.build

  end

  def edit
  end

  def create
        @tag = current_user.tags.build(tag_params)
    if @tag.save
      redirect_to @tag, notice: 'tag was successfully created.'
    else
      render action: 'new'
    end 
  end

  def update
       if @tag.update(tag_params)
      redirect_to @tag, notice: 'tag was successfully updated.'
       else
      render action: 'edit'
      end  
  end

  def destroy
    @tag.destroy
    redirect_to tags_url

  end

  private
    def set_tag
      @tag = Tag.find(params[:id])
    end

    def tag_params
    params.require(:tag).permit(:description, :image)
    end
    
      def correct_user
      @tag = current_user.tags.find_by(id: params[:id])
      redirect_to tags_path, notice: "Not authorized to edit this tag" if @tag.nil?
    end
end

