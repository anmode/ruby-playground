class PagesController < ApplicationController
  def home
    @incidents = Incident.all
  end
end
