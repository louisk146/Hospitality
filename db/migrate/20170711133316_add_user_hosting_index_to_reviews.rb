class AddUserHostingIndexToReviews < ActiveRecord::Migration
  def change
  	add_reference :reviews, :hosting, index: true
  	add_reference :reviews, :user, index: true
  end
end
