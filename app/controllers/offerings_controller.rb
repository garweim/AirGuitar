class OfferingsController < ApplicationController
  before_action :find_id, only: [ :create, :show]
  def index
    @offerings = Offering.all
  end

  def new
<<<<<<< HEAD
    @offering = Offering.new(offering_attributes)
  end
=======
    @offering = Offering.new
>>>>>>> a88d4805a27c7892ce31f4fc4e03dc2f1bb8c429

  end

  # def edit
  # end

  # def show
  # end

  def create
<<<<<<< HEAD
    @offering = Offering.new(offering_params)
    if @offering.save
      redirect_to offering_path(@offering)
    else
      render "new"
=======
    @offering = Offering.new(offerings_params)
    if @offering.save
      redirect_to offering_path(@offering)
    else
      render :new
>>>>>>> a88d4805a27c7892ce31f4fc4e03dc2f1bb8c429
    end
  end

  def destroy
  end

  private

  def offerings_params
<<<<<<< HEAD
    params.require(:offering).permit(:first_name, :last_name, :email, :password)
=======
    params.require(:offering).permit(:name, :price_hour, :genre)
  end

  def find_id
    @offering = Offering.find(params[:id])
>>>>>>> a88d4805a27c7892ce31f4fc4e03dc2f1bb8c429
  end
end

