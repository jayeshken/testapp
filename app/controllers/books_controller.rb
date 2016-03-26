class BooksController < ApplicationController
   before_action :set_book, only: [:show, :edit, :update, :destroy]
   before_action :authenticate_user!, except: [:index, :show]
  


  respond_to :html

  def index
    @books = Book.search(params[:search])
  end

  def show
    @reviews=@book.reviews
  end

  def new
        @book = current_user.books.build

  end

  def edit
  end

  def create
        @book = current_user.books.build(book_params)
    if @book.save
      redirect_to @book, notice: 'record was successfully created.'
    else
      render action: 'new'
    end 
  end

  def update
       if @book.update(book_params)
      redirect_to @book, notice: 'student was successfully updated.'
       else
      render action: 'edit'
      end  
  end

  def destroy
    @book.destroy
    redirect_to books_url

  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
    params.require(:book).permit(:name)
    end
    
      def correct_user
      @book = current_user.books.find_by(id: params[:id])
      redirect_to books_path, notice: "Not authorized to edit this book" if @book.nil?
    end



end
