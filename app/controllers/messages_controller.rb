class MessagesController < ApplicationController
  def create
    message = Message.build(message_params) do |message|
      message.user = current_user
      message.channel = Channel.find(params[:channel_id])
    end
    
    if message.save
      redirect_to channel_path(message.channel)
    else
      message = message.errors.full_messages.join(", ")
      render "channels/show", notice: Rails.env.development? ? message : nil
    end
  end
end
