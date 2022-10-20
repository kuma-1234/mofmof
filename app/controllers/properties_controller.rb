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
    @property = Property.find(params[:id])
    @property.stations.build
  end

  def update
    @property = Property.find(params[:id])
    if @property.update(property_params)
      redirect_to properties_path
    else
      render :edit
    end
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy
    redirect_to properties_path
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
        %i(id station_name route_name walk _destroy)
    )
  end
end
