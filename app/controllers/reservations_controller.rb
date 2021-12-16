class ReservationsController < ApplicationController
    http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :create]

    def index
        @reservation = Reservation.new
    end

    def show
        @reservation = Reservation.find(params[:id])
    end

    def create
        @reservation = Reservation.new(reservation_params)
        if @reservation.save
            redirect_to index
        else
            render :index
        end
    end

    def destroy
        @reservation = Reservation.find(params[:id])
        @reservation.destroy

        redirect_to list_path
    end

    def list
        @reservations = Reservation.all
    end


    private
        def reservation_params
            params.require(:reservation).permit(:name, :phone, :instagram)
        end
end
