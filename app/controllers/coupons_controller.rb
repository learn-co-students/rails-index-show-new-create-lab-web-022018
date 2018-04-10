class CouponsController < ApplicationController
  def index
  end

  def new
    @coupon = Coupon.new
  end

  def create
    @coupon = Coupon.create(params.require(:coupon).permit(:store, :coupon_code))
    redirect_to coupon_path(@coupon)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end
end
