class OfferingsController < ApplicationController
  before_action :find_id, only: [:show]
  def index
    @offerings = Offering.all
  end

  def new
    #@user = User.find(params[:user_id])
    @offering = Offering.new
  end

  # def edit
  # end

  # def show
  # end

  def create
    @offering = Offering.new(offerings_params)
    @offering.user = current_user
    if @offering.save
      redirect_to offering_path(@offering)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def offerings_params
    params.require(:offering).permit(:name, :price_hour, :genre, :picture)
  end

  def find_id
    @offering = Offering.find(params[:id])
  end
end
