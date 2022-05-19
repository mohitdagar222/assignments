class LyricsController < ApplicationController

        def index
        end
        
        def new
            @artist = Artist.find_by(id: params[:artist_id])
            @song = Song.find_by(id: params[:song_id])
            @lyric = Lyric.new
        end
    
        def create
            @song = Song.find_by(id: params[:song_id])
            @song.create_lyric(lyric_params)
            redirect_to '/'
    
        end
    
        def edit
            @artist = Artist.find_by(id: params[:artist_id])
            @song = @artist.songs.find_by(id: params[:song_id])
            @lyric = @song.lyric
        end
    
        def update
            @artist = Artist.find_by(id: params[:artist_id])
            @song = Song.find_by(id: params[:song_id])
            @song.lyric.update(lyric_params)
            redirect_to "/artists/#{@artist.id}/songs"
    
        end
    
        def destroy
            # @artist = Artist.find_by(id: params[:artist_id])
            # @artist.songs.find_by(id: params[:id]).destroy
            # redirect_to "/artists/#{@artist.id}/songs"
        end

        def show
            @artist = Artist.find_by(id: params[:artist_id])
            @song = @artist.songs.find_by(id: params[:song_id])
            @lyric = Lyric.find_by(id: params[:id])
        end
    
        private 
        def lyric_params
            params.require(:lyric).permit(:content)
        end
    end
    

