class InitialSchema < ActiveRecord::Migration
  def change

create_table :hostings do |t|
  t.string :name
  t.text   :description
  t.string :address1
  t.string :address2
  t.string :country
  t.string :city
  t.string :county
  t.string :postalcode
  t.string :phone
  t.string :email
end

create_table :reviews do |t|
  t.string :comment
  t.integer:rating
end

create_table :categories do |t|
  t.string :name
end
end
end
