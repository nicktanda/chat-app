class ChannelsController < ApplicationController
  before_action :load_channel, only: [:show]

  def index
    @channels = my_channels
  end

  def show
  end

  private

  def load_channel
    @channel = my_channels.find_by(id: params[:id])
    unless @channel
      redirect_to root_path, notice: "The channel '#{params[:id]}' doesn't exist (or you don't have permisson to see it)"
    end
  end

  def my_channels
    current_user.channels.includes(:messages)
  end
end
