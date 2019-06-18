class AlbumsController < ApplicationController
    before_action :authenticate_user!
    def index
      @albums = current_user.album
    end
  
    def update
      @album = Album.find(params[:id])
      @album.completed = !@album.completed
      @album.save
      redirect_back(fallback_location: root_path)
    end
end
