class OfferingsController < ApplicationController
  before_action :find_id, only: [:show]
  def index
    @offerings = Offering.all
  end

  def new
    @offering = Offering.new
  end

  def create
    @offering = Offering.new(offerings_params)
    @offering.user = current_user
    if @offering.save!
      redirect_to offering_path(@offering)
    else
      render :new
    end
  end

  def show

  end

  # def edit
  #   @offering = Offering.find(params[:id])
  # end

  # def update
  #   if @offering.update(offering_params)
  #     redirect_to edit_offering_path(@offering)
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @offering = Offering.find(params[:id])
    @offering.destroy
    redirect_to root_path
  end

  private

  def offerings_params
<<<<<<< HEAD
    params.require(:offering).permit(:name, :price_hour, :genre, :picture, :description)
=======
    params.require(:offering).permit(:name, :price_hour, :genre, :picture)
>>>>>>> master
  end

  def find_id
    @offering = Offering.find(params[:id])
  end
end
