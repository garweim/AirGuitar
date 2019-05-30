class BookingsController < ApplicationController
  before_action :set_offering
  # def index
  # end

  def new
    @booking = Booking.new
  end

  # def edit
  # end

  # def show
  # end

  def create
    @booking = Booking.new(booking_params)
    @booking.offering = @offering
    @booking.save
    redirect_to offering_path(@offering)
    #POST
  end

  # def destroy
  # end

  private

  def set_offering
    @offering = Offering.find(params[:offering_id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :end_date)
  end
end
