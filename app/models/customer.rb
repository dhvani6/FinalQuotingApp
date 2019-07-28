class Customer < ApplicationRecord
  validates :customer_fname, presence: true
  validates :customer_lname, presence: true
  validates :customer_phone, presence: true, format: { with: /\d{3}-\d{3}-\d{4}/, message: "must be in xxx-xxx-xxxx format."}
  validates :customer_address, presence: true
  validates :customer_city, presence: true
  validates :customer_state, presence: true
  validates_length_of :customer_state, minimum: 2, maximum: 2
  validates :customer_zip, presence: true, format: { with: /\d{5}/, message: "must be xxxxx format." }
  before_save :defaultz

  def defaultz
    self.customer_state ||= 'TX'
  end

  belongs_to :employee
  has_many :quotes
end
