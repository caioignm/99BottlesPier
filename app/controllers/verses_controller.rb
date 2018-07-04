require_relative '../bottles_logic/bottles'

class VersesController < ApplicationController
  before_action :set_verse, only: [:show, :index]

  # GET /verses
  def index
    @verses = ::Bottles99.new.verses(params[:verse_start].to_i, params[:verse_end].to_i)

    render json: {requested_verses: @verses}
  end

  # GET /verses/1
  def show
    @verse = ::Bottles99.new.verse(params[:id].to_i)
    render json: {requested_verse: @verse}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_verse
      @verse = ::Bottles99.new.verse(params[:id].to_i)
    end

    # Only allow a trusted parameter "white list" through.
    def verse_params
      params.require(:verse).permit(:verse_start, :verse_end)
    end
end
