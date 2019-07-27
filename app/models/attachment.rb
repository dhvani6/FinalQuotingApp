class Attachment < ApplicationRecord
  has_many :equipment_attachments
  has_many :quotes
  has_many :list_prices
end
