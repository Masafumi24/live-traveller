class GroupsController < ApplicationController
  before_action :instance_new, only: [:new]

  def new
  end

  def create
    instance_new(group_params)
  end

  private

  def instance_new
    @group = Group.new
  end

  def group_params
    params[:group].permit(:name)
  end
  
end
