class GroupsController < ApplicationController
  # before_action :only, [:new]

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
  end

  private

  def group_params
    params[:group].permit(:name)
  end
  
end
