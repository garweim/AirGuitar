class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def edit

  end

  def show
  end

  def create
    @booking = Booking.new(
      offering: Offering.find(params[:booking][:offering].to_i),
      starting_date: params[:booking][:starting_date],
      end_date: params[:booking][:end_date]
      )
    @booking.user = current_user
      if @booking.save!
      redirect_to bookings_path
    end
  end

  def destroy
  end

end
