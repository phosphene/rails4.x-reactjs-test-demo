class DashboardsController < ApplicationController
  before_filter :authenticate_user! ##, :except => [:get_started_content]
  # GET /dashboard
  def show
    @user = current_user
    respond_to do |format|
      format.html # show.html.slim
    end
  end
end
