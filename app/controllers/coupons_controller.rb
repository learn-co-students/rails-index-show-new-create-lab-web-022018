class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    # @student = Student.find(params[:id])
    @coupon = Coupon.find(params[:id])
  end

  def new

  end

  def create
    # STDOUT.puts "*********PARAMS:#{params}"
    # STDOUT.puts "*********PARAMS:#{params["coupon"]["coupon_code"]}"
    @coupon = Coupon.new
    #  errorno implicit conversion of String into Integer #stupi error missing params from []
    # @coupon.coupon_code = params["coupon"]["coupon_code"]#params[:coupon_code]
    @coupon.coupon_code = params["coupon_code"]#params[:coupon_code]
    # @coupon.store = params["coupon"]["store"]#params[:store]
    @coupon.store = params["store"]#params[:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
end #class

# def create
#                          @post = Post.new
#                          @post.title = params[:title]
#                          @post.description = params[:description]
#                          @post.save
#                          redirect_to post_path(@post) # for student it would be redirect_to student_path(@student)
#                        end end
