class AddLatLonToHostings < ActiveRecord::Migration
  def change
  	add_column :hostings, :latitude, :float
  	add_column :hostings, :longitude, :float
  end
end
