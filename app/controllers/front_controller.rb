class FrontController < ApplicationController

  hobo_controller

  def index
    @skills = Skill.all
    @tools  = Tool.all
    @projects = Project.all
    @jobs = Job.all
    @education = Education.all
    @languages = Language.all
  end

  def summary
    if !current_user.administrator?
      redirect_to user_login_path
    end
  end

  def search
    if params[:query]
      site_search(params[:query])
    end
  end

end
