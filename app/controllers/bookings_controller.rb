class BookingsController < ApplicationController
  def index
    # @offering = Offering.find(params[:offering_id])
    @bookings = policy_scope(Booking).where(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @offering = Offering.find(params[:offering_id])
    @booking = Booking.new(bookings_params)
    @booking.offering = @offering
    @booking.user = current_user
    authorize @booking
    if @booking.save!
      redirect_to bookings_path
    else
      redirect_to offering_path(@offering)
    end
  end


  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(bookings_params)
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path
  end

  def gigs
    @offerings = Offering.where(user_id: current_user)
    #@bookings = Booking.joins(:offering).where(user_id: current_user.id)
    authorize @offerings

  end

  private


  def bookings_params
    params.require(:booking).permit(:starting_date, :end_date, :offering_id)
  end
end
# offering: Offering.find(params[:booking][:offering].to_i),
#       starting_date: params[:booking][:starting_date],
#       end_date: params[:booking][:end_date]
