class MusicsController < ApplicationController
  def index
    @music = Music.all
  end
end
