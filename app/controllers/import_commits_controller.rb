class ImportCommitsController < ApplicationController
  def new
  end

  def create
    respond_with(get_commits) do |format|
      format.html { redirect_to commits_path }
    end
  rescue StandardError => e
    flash[:alert] = e.message
    render :new
  end

  private

  def get_commits
    ImportCommit.new(params[:user_name], params[:repository], params[:email]).import_commits!
  end

  def interpolation_options
    { resource_name: 'Request' }
  end

end
