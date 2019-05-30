class PagesController < ApplicationController
  def home
    kip_before_action :authenticate_user!, only: [:offerings]
  end
end
