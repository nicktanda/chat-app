class ChannelsController < ApplicationController
  def index
    render json: current_user.channels.map(&:as_json)
  end

  def show
    render json: "Channels show"
  end
end
