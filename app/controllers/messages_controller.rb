class MessagesController < ApplicationController
  before_action :set_user
  before_action :set_group

  def index
    @message = Message.new
    if @group.messages.present?
      @other_messages = @group.messages.includes(:user).where.not(user_id:(current_user.id))
      @current_messages = @group.messages.where(user_id:(current_user.id))
      # @messages = @group.messages.includes(:user)
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
