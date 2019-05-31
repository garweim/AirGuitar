class BookingsController < ApplicationController
  def index
    # @offering = Offering.find(params[:offering_id])
    @bookings = Booking.where(user_id: current_user.id)

    # if @bookings.is_nil?

    # else
    #   @bookings
    # end
  end

  def edit
  end

  def show
  end

  def create
    @offering = Offering.find(params[:offering_id])
    @booking = Booking.new(bookings_params)
    @booking.offering = @offering
    @booking.user = current_user
    if @booking.save!
      redirect_to bookings_path
    else
      redirect_to offering_path(@offering)
    end
  end

  def destroy
    @booking = Booking.find(params[:format])
    authorize @booking
    @booking.destroy
    redirect_to gigs_bookings_path
  end

  def gigs
    @offerings = Offering.where(user_id: current_user)
    @bookings = Booking.joins(:offering).where(user_id: current_user.id)
  end

  private


  def bookings_params
    params.require(:booking).permit(:starting_date, :end_date, :offering_id)
  end
end
# offering: Offering.find(params[:booking][:offering].to_i),
#       starting_date: params[:booking][:starting_date],
#       end_date: params[:booking][:end_date]
