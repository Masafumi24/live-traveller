class GroupsController < ApplicationController
  before_action :set_user
  # before_action :set_group
  before_action :user_all

  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    (@group.save) ? (redirect_to message_path(@group.id)) : (redirect_to new_group_path)
  end

  private

  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end
  
end
