class PagesController < ApplicationController
  def home
    @projects = Project.all
  end

  def show
  end
end
