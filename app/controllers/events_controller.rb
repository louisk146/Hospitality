class EventsController < ApplicationController
	def index
	end

	def show
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			redirect_to @event
		else
			render 'new'
		end
	end

	def edit

	end

	def update
	end

	def destroy
	end

	private

	def event_params
		params.require(:event).permit  (:name, :date, :address1, :address2, :description, :country, :city, :postalcode, :email)
      t.string :socialmedia
      t.category :integer
      t.latitude :float
      t.longitude :float
      t.image :string 
	end

	def find_event
	end

end