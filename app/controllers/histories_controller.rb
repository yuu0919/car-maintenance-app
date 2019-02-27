class HistoriesController < ApplicationController
  layout "mypage", only: [:index, :new, :show]

  def top
  end

  def index
    @cars = Car.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @cars = Car.where(user_id: current_user.id)
    @history = History.new
  end

  def create
    @history = History.new(history_params)
    if @history.save
      redirect_to histories_path
    else
      redirect_to new_history_path
    end
  end

  private

  def history_params
    params.require(:history).permit(:title, :comment, :maintenance, :plan, :car_id).merge(user_id: current_user.id)
  end
end
