require_relative '../bottles_logic/bottles'

class SongsController < ApplicationController
  before_action :set_song, only: [:show]

  # GET /songs
  def index
    @songs = ::Bottles99.new.song

    render json: {whole_song: @songs}
  end
end
