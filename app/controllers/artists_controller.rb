class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render('artists/index.html.erb')
  end

  def new
    @artist = Artist.new
    render('artists/new.html.erb')
  end

  def create
    @artist = Artist.new(params[:artist])
    if @artist.save
      flash[:notice] = "Your artist was saved."
      redirect_to("/")
    else
      flash[:notice] = "Please re-enter."
      render('artists/new.html.erb')
    end
  end

  def show
    @artist = Artist.find(params[:id])
    render('artists/show.html.erb')
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "The artist was destroyed."
    redirect_to("/")
  end

  def edit
    @artist = Artist.find(params[:id])
    render('artists/edit.html.erb')
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(params[:artist])
      flash[:notice] = "Artist updated."
      redirect_to("/")
    else
      flash[:notice] = "Please re-enter."
      render('artists/edit.html.erb')
    end
  end
end
