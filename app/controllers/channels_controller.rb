class ChannelsController < ApplicationController
  before_action :load_channel, only: [:show]

  def index
    @channels = current_user.channels
  end

  def show
  end

  private

  def load_channel
    @channel = current_user.channels.find_by(id: params[:id])
    unless @channel
      redirect_to root_path, notice: "The channel '#{params[:id]}' doesn't exist (or you don't have permisson to see it)"
    end
  end
end
