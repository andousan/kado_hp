class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to equipments_path
    else
      render :index
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def equipment_params
    params.require(:equipment).permit(:name, :detail)
  end
end
