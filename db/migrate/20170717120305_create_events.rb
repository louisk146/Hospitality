class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :date
      t.string :address1
      t.string :address2
      t.text :description
      t.string :country
      t.string :city
      t.string :postalcode
      t.string :email
      t.string :socialmedia
      t.category :integer
      t.latitude :float
      t.longitude :float
      t.image :string

      t.timestamps null: false
    end
  end
end
