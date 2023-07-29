class ChannelsController < ApplicationController
  def index
    render json: "Channels index"
  end

  def show
    render json: "Channels show"
  end
end
