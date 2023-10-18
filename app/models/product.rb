class Product < ActiveRecord::Base
  monetize :price_cents
  has_many :orders
end

# == Schema Information
#
# Table name: products
#
#  id               :bigint           not null, primary key
#  name             :string
#  paypal_plan_name :string
#  price_cents      :integer          default(0), not null
#  price_currency   :string           default("USD"), not null
#  stripe_plan_name :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
