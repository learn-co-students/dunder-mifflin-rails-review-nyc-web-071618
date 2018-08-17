class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render :index
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private

  def dog_params
    params.require(:dogs).permit(:name, :age, :breed)
  end

end
