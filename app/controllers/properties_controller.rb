class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    @property.stations.build
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def property_params
    params.require(:property).permit(
      :property_name,
      :price,
      :address,
      :age,
      :note,
      stations_attributes:
        %i(id station_name route_name walk)
    )
  end
end
