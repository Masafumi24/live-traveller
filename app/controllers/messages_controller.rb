class MessagesController < ApplicationController
  before_action :set_user
  before_action :set_group

  def show
    @message = Message.new
    if @group.messages.present?
      @messages = @group.messages
    end
  end

end
