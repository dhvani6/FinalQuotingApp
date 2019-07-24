class Attachment < ApplicationRecord
  has_many :equipment_attachments
  has_many :quotes
end
