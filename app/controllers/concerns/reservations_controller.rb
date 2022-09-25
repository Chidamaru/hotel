class ReservationsController < ApplicationController
  def create
    @reservation = current_user.reservations.create(reservation_params)
    redirect_to root_path notice:"予約が完了しました"
  end

 private

  def reservation_params
   params.require(:reservation).permit(:start_date, :end_date, :count, :price, :post_id)
  end 
  def index
    @reservations = current_user.reservations.all
  end

    def lend
    @posts = current_user.posts
    end 

end