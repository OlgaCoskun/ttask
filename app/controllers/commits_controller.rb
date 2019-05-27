class CommitsController < ApplicationController
  def index
    @commits = (@user ? @user.commits : Commit).order(:date).page params[:page]
    respond_with(@commits)
  end

  def destroy
    @commit = Commit.find(params[:id])
    @commit = Commit.where(@commit.trash == true)
    @commit.destroy_all

    respond_to do |format|
      format.js
      format.html
    end
  end
end
