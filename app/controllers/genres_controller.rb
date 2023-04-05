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
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end
end