class TripsController < ApplicationController
    def index
        @trips = Trip.all
    end

    def edit
        @trip = Trip.find(params[:id])
    end
    

    def update
        @trip = Trip.find(params[:id])
        @trip.save()

        @ticket = Ticket.new(user_id: current_user.id, trip_id: @trip.id)
        #@ticket.update(user_id: current_user.id, trip_id: @ticket.id)
        p @ticket
        @ticket.save

        #Ticket.new(user_id = current_user.id, trip_id = @ticket.id ) 
        redirect_to trips_path
      end

    
end
