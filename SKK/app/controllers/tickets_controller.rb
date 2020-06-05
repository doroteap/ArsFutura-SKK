class TicketsController < ApplicationController
    def index
        @tickets = current_user.tickets
    end

    def destroy
        @ticket = Ticket.find(params[:id])
        trip_id = @ticket.trip_id
        @trip = Trip.find(trip_id)
        @trip.available_seats += 1
        @trip.save
        @ticket.destroy
       
        redirect_to user_tickets_path(current_user)
      end
end
