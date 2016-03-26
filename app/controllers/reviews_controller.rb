class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_book
  before_action :authenticate_user!, except: [:index, :show]

  respond_to :html

def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.user_id=current_user.id
    @review.book_id = @book.id
     if @review.save
      redirect_to @book, notice: 'record was successfully created.'
    else
      render action: 'new'
    end 
  end

  def update
     if @review.update(review_params)
      redirect_to @book, notice: 'record was successfully updated.'
     else
      render action: 'edit'
      end  
  end

  def destroy
    @review.destroy
     redirect_to @book, notice: 'deleted successfully'
  end

  private
    def set_review
      @review = Review.find(params[:id])
    end
    
    def set_book
      @book = Book.find(params[:book_id])
    end

    def review_params
      params.require(:review).permit(:subject,:IT1,:IT2,:faculty)
    end
end
