class Hosting < ActiveRecord::Base
    
    has_many :comments
    belongs_to :category
    validates_presence_of :name
    validates_presence_of :description
    validates_presence_of :country
    validates_presence_of :city
    validates_presence_of :email

    geocoded_by :full_address
    after_validation :geocode

    mount_uploader :image, ImageUploader

    def full_address
    	[address1, address2, country, city, county, postalcode].join (',')
    end

    def self.search(params)
    	hostings = Hosting.where(category_id: params[:category].to_i)
    	hostings = hostings.where("country like ? or city like ?", "%#{params[:search]}%", "%#{params[:search]}") if params[:search].present?
    	hostings = hostings.near(params[:location], 200) if params[:location].present?
end
end
