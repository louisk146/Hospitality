class HostingsController < ApplicationController

    before_action :authenticate_user!, only: [:create, :new]
    before_action :is_admin?, only: [:edit, :update, :destroy]

    def index

     #     @hostings = Hosting.all
      #  if params[:search]
       #     @hostings = Hosting.search(params[:search]).order("created_at DESC")
       # else
        #    @hosting = Hosting.all.order('created_at DESC')
    #end


        #visitor_latitude = request.location.latitude
        #visitor_longitude = request.location.longitude

        #developer latitude and longitude
        visitor_latitude = 53.3811
        visitor_longitude = -1.4701

        @hostings = Hosting.near([visitor_latitude, visitor_longitude], 300)
        @hostings = Hosting.all.near([visitor_latitude, visitor_longitude], 300)
    end

    def new
    	@hosting = Hosting.new
    end

    def create
    	@hosting = Hosting.new(hosting_params)
    	if @hosting.save
    	redirect_to @hosting
        else
            flash[:danger] = @hosting.errors.full_messages.to_sentence
            render 'new'
        end
    end
    
    def show
        @hosting = Hosting.find(params[:id])
        @comments =Comment.where(hosting_id: @hosting)
    end

    def search
        if params[:category].blank?
        @hostings = Hosting.all
        else
       @hostings = Hosting.search(params)
       end
    end

    def edit
        @hosting =Hosting.find(params[:id])
    end

    def update
        @hosting = Hosting.find(params[:id])
        @hosting.update(hosting_params)
        redirect_to @hosting
    end

    def destroy
        @hosting = Hosting.find(params[:id])
        @hosting.destroy
        redirect_to root_path
    end

    private 
    	def hosting_params
    		params.require(:hosting).permit(:name, :description, :address1, :address2, :category_id,
    										:country, :city, :county, :postalcode, :phone, :email, :image ,:socialmedia )
    	end

        def is_admin?
            if !current_user.try(:admin?)
                flash[:danger] = "You are not authorized to edit or delete."
                redirect_to root_path
            end
        end
end