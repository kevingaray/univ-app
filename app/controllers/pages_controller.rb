class PagesController < ApplicationController
  skip_before_action :require_user, only: [:new, :create]
  
  def about
  end

end