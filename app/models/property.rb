class Property < ApplicationRecord
  has_many :stations
  accepts_nested_attributes_for :stations #reject_if: :reject_stations
end
  # def reject_stations
    #attributes[:station_name, :route_name, :walk].blank?
  #end

