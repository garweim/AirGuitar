class PagesController < ApplicationController
  def home
    skip_before_action :authenticate_user!, only: [:offerings]
  end
end
