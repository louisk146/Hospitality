class Comment < ActiveRecord::Base


    belongs_to :hosting
    belongs_to :user

end