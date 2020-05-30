class MessagesController < ApplicationController
  before_action :set_user
  before_action :set_group

  def index
    @message = Message.new
    if @group.messages.present?
      @messages = @group.messages.includes(:user)
    end
  end

  def create
    @message = Message.new(message_params)
  end

  private

  def message_params
    params.require(:message).permit(:message, :image).merge(user_id: current_user.id)
  end

end
