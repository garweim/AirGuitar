class OfferingsController < ApplicationController
  def index
    @offerings = Offering.all
  end

  def new
    @offering = Offering.new(offering_attributes)
  end

  def edit
  end

  def show
  end

  def create
    @offering = Offering.new(offering_params)
    if @offering.save
      redirect_to offering_path(@offering)
    else
      render "new"
    end
  end

  def destroy
  end

  private

  def offerings_params
    params.require(:offering).permit(:first_name, :last_name, :email, :password)
  end
end

