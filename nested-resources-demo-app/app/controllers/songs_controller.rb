class SongsController < ApplicationController

    def index
        @songs = Artist.find_by(id: params[:artist_id]).songs
    end
    
    def new
        @artist = Artist.find_by(id: params[:artist_id])
        @song = Song.new
    end

    def create
        @artist = Artist.find_by(id: params[:artist_id])
        @artist.songs.create(song_params)
        redirect_to '/'

    end

    def edit
        @artist = Artist.find_by(id: params[:artist_id])
        @song = @artist.songs.find_by(id: params[:id])
    end

    def update
        @artist = Artist.find_by(id: params[:artist_id])
        @artist.songs.find_by(id: params[:id]).update(song_params)
        redirect_to "/artists/#{@artist.id}/songs"

    end

    def destroy
        @artist = Artist.find_by(id: params[:artist_id])
        @artist.songs.find_by(id: params[:id]).destroy
        redirect_to "/artists/#{@artist.id}/songs"
    end

    private 
    def song_params
        params.require(:song).permit(:name)
    end
end
