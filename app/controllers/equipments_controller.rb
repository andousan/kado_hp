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
      @equipments = Equipment.all
      render :index
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      redirect_to equipments_path
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def equipment_params
    params.require(:equipment).permit(:name, :detail)
  end
end
