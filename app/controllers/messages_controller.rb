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
    @message = @group.messages.new(message_params)
    (@message.save) ? (redirect_to group_messages_path(@group.id)) : (redirect_to group_messages_path(@group.id))
  end

  private

  def message_params
    params.require(:message).permit(:message, :image).merge(user_id: current_user.id)
  end

end
