class AddCategoryIndexToHostings < ActiveRecord::Migration
  def change
  	add_reference :hostings, :category, index: true
  end
end
