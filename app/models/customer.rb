class Customer < ApplicationRecord
  validates :customer_fname, presence: true
  validates :customer_lname, presence: true
  validates :customer_phone, presence: true, format: { with: /\d{3}-\d{3}-\d{4}/, message: "must be in xxx-xxx-xxxx formatt"}
  validates :customer_address, presence: true
  validates :customer_state, presence: true, length: {minimum: 2}, length: {maximum: 2}
  validates :customer_zip, presence: true, format: { with: /\d{5}/, message: "must be xxxxx format" }
end
