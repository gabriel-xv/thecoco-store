class DollsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dolls = Doll.all
  end

  def show
    @doll = Doll.find(params[:id])
  end

  def new
    @new_doll = Doll.new
  end

  def create
    @new_doll = Doll.new(doll_params)
    @new_doll.user = current_user
    if @new_doll.save
      redirect_to doll_path(@new_doll)
    else
      render :new
    end
  end

  def edit
    @edit_doll = Doll.find(params[:id])
  end

  def update
    @update_doll = Doll.find(params[:id])
    @update_doll.update(doll_params)

    redirect_to doll_path(@update_doll)
  end

  private

  def doll_params
    params.require(:doll).permit(:name, :price, :description, :photos, :adopted)
  end
end
