class GenresController < ApplicationController
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to genre_path(@genre)
    else
      render :new
    end
  end

  def index
    @genres = Genre.all
    @genre = Genre.new
  end

  def show
    @genres = Genre.all
    @genre = Genre.find(params[:id])
    @books = @genre.books
    @book = Book.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to genre_path(@genre.id)
     else
      render :edit
     end
  end

  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to genres_path
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end
