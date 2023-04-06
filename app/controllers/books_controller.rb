class BooksController < ApplicationController
  def create
    @genre = Genre.find(params[:genre_id])
    @book = @genre.books.new(book_params)
    @book.genre_id = @genre.id
    if @book.save
      redirect_to genre_path(@genre.id)
    else
      render "genres/show.html.erb"
    end
  end

  def edit
    @book = Book.find(params[:id])
    @genre = @book.genre
  end
  
  def update
    @book = Book.find(params[:id])
    @genre = @book.genre
    if @book.update(book_params)
      redirect_to genre_path(@genre.id)
    else
      render :edit
    end
  end

  def destroy
    Book.find(params[:id]).destroy
    redirect_to genre_path(params[:genre_id])
  end

  private
  def book_params
    params.require(:book).permit(:number, :title, :author, :publisher, :date, :note, :genre_id)
  end
end
