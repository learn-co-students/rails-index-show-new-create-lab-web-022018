class CreateCouponCodes < ActiveRecord::Migration
  def change
    create_table :coupon_codes do |t|
      t.string :store

      t.timestamps null: false
    end
  end
end
