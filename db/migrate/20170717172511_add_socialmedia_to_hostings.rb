class AddSocialmediaToHostings < ActiveRecord::Migration
 def change
  	add_column :hostings, :socialmedia, :string
  end
end
