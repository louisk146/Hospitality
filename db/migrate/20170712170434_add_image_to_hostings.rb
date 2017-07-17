class AddImageToHostings < ActiveRecord::Migration
  def change
  	add_column :hostings, :image, :string
  end
end
