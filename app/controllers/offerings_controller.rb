class OfferingsController < ApplicationController
  before_action :find_id, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index
  def index
    # @offerings = Offering.all
    if params[:query].present?
      @offerings = Offering.where("@@ ?", "%#{params[:query]}")
    else
      @offerings = policy_scope(Offering)
      @offering = Offering.all
    end
  end

  def new
    @offering = Offering.new
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

     # @offering = Offering.find(params[:id])
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

  end

  def find_id
    @offering = Offering.find(params[:id])
    authorize @offering
  end
end
