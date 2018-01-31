class CorsairsController < ApplicationController

  before_action :set_corsair, only: [:show, :edit, :update, :destroy]

  def new
    @corsair = Corsair.new
  end

  def create
    @corsair = Corsair.new(corsair_params)
    @corsair.save
    redirect_to @corsair
  end

  def show
  end

  def edit
  end

  def update
    @corsair.update(params.require(:corsair).permit(:first_name, :age, :likeness))
    redirect_to corsair_path
  end


  def index
    @corsairs = Corsair.all
  end

  def destroy
    @corsair.destroy
    redirect_to corsairs_path
  end


  private
  def corsair_params
    params.require(:corsair).permit(:first_name, :age)
  end

  def set_corsair
  @corsair = Corsair.find(params[:id])
  end
end
