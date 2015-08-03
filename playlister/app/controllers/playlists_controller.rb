class PlaylistsController < ApplicationController

  def index
    @playlists = Playlist.all
  end

  def new
    @playlist = Playlist.new
    @users = User.all
  end

  def create
    @playlist= Playlist.new(params_list)
    if @playlist.save
      flash[:success] = "playlist created!" #if flash in view
      redirect_to root_url
    else
      flash.now[:error] = "failed!" #if flash in view
      render :new
    end
  end

  private

  def params_list
    params.require(:playlist).permit(:user_id, :id, :name,
      :song_ids => [])
  end

end
