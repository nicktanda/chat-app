class ChannelsController < ApplicationController
  before_action :load_channel, only: [:show]

  def index
    render json: current_user.channels.map(&:as_json)
  end

  def show
    render json: @channel.messages.map(&:as_json)
  end

  private

  def load_channel
    @channel = current_user.channels.find_by(id: params[:channel_id])
    unless @channel
      redirect_to root_path, notice: "The channel doesn't exist (or you don't have permisson to see it)"
    end
  end
end
