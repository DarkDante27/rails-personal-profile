class PagesController < ApplicationController
  def home
    @projects = Project.last(5)
  end
end
