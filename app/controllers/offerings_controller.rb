class OfferingsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update]
  def index
    # @offerings = Offering.all
    @offering = policy_scope(offering)
  end

  def new
    # @offering = Offering.new
    authorize @offering
  end

  def create
    @offering = Offering.new(offerings_params)
    @offering.user = current_user
    authorize @offering
    if @offering.save!
      redirect_to offering_path(@offering)
    else
      render :new
    end
  end

  def show

    @booking = Booking.new
  end

  def edit

  end

  def update
    if @offering.update(offerings_params)
      redirect_to offering_path(@offering)
    else
      render :edit
    end
  end

  def destroy
    @offering = Offering.find(params[:id])
    @offering.destroy

    redirect_to root_path
  end

  private

  def offerings_params
    params.require(:offering).permit(:name, :price_hour, :genre, :picture, :description)
    authorize @offering
  end

  def find_id
    @offering = Offering.find(params[:id])
  end
end
