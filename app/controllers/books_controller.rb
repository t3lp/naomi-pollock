class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def create
    @book=Book.create(book_params)
    if @book.save
      redirect_to admin_dashboard_dashboard_path, notice: "Book Successfully Added"
    else
      render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find_by id: params[:id]
  end

  def edit
    @book = Book.find_by id: params[:id]
  end

  def update
    @book = Book.find_by id: params[:id]
    if @book.update(book_params)
      redirect_to admin_dashboard_dashboard_path, notice: "Book Details Successfully Updated"
    else
      render :edit
    end
  end

  def delete
      @book = Book.find_by id: params[:id]
      @book.destroy
      redirect_to admin_dashboard_dashboard_path, notice: 'Book Details Removed'
  end

  private

  def book_params
    params.require(:book).permit(:full_title, :title, :sub_title, :year, :contributors, :publisher, :language, :pages, :description, :amazon_link, :height, :width)
  end

end
