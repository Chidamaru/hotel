class ReservationsController < ApplicationController
  def create
    @reservation = current_login.reservations.create(reservation_params)
    redirect_to root_path notice:"予約が完了しました"
  end

 private

  def reservation_params
   params.require(:reservation).permit(:start_date, :end_date, :count, :price, :post_id)
  end 
  def index
    @reservations = current_login.reservations.all
  end

    def lend
    @posts = current_login.posts
    end 

end