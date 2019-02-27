class CarsController < ApplicationController
  layout  "mypage"
  def index
    @cars = Car.where(user_id: current_user.id).order("updated_at ASC")
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
    @histories = @car.histories.order("updated_at DESC")
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path
    else
      redirect_to new_car_path
    end
  end

  def edit
  end

  private

  def car_params
    params.require(:car).permit(:tire, :model, :year, :name).merge(user_id: current_user.id)
  end

end
