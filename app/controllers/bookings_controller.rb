class BookingsController < ApplicationController
  before_action :set_offering, only: [:new, :create]
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.offering = @offering
    @booking.user = current_user
      if @booking.save!
        redirect_to offering_bookings_path(@offering)
      else
        render :new
      end
  end

  private

  def set_offering
    @offering = Offering.find(params[:offering_id])
  end

  def booking_params
    params.require(:booking).permit(:starting_date, :end_date, :offering_id)
  end
end
