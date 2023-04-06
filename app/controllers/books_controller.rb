class BooksController < ApplicationController
  def create
    @genre = Genre.find(params[:genre_id])
    @book = @genre.books.new(book_params)
    @book.genre_id = @genre.id
    if @book.save
      redirect_to genre_book_path(@genre.id, @book.id)
    else
      render "genres/show.html.erb"
    end
  end

  def edit
  end
  
  def update
  end

  private
  def book_params
    params.require(:book).permit(:number, :title, :author, :publisher, :date, :note, :genre_id)
  end
end
