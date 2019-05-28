class CommitsController < ApplicationController
  def index
    @commits = (@user ? @user.commits : Commit).order(:date).page params[:page]
    respond_with(@commits)
  end

  def remove_multiple
    ids = params[:commits_ids]
    Commit.where(id: ids).destroy_all
    respond_to do |format|
      format.html { redirect_to commits_url }
      format.js { render layout: false }
    end
  end
end
