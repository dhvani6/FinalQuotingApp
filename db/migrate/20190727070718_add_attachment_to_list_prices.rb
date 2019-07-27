class AddAttachmentToListPrices < ActiveRecord::Migration[5.2]
  def change
    add_reference :list_prices, :attachment, foreign_key: true
  end
end
