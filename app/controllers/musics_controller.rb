class MusicsController < ApplicationController
  def index
    @musics = Music.search(params[:search])
  end
end
