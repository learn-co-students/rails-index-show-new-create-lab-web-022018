class Coupon < ActiveRecord::Base
  def to_s
    "Store: #{store} Coupon Code: #{coupon_code}"
  end
end
