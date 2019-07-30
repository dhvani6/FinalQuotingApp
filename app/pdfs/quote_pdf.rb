class QuotePdf < Prawn::Document
  def initialize(quote)
    super(top_margin: 70)
    @quote = quote
    quote_date
    line_items
  end

  def quote_date
    text "Quote \##{@quote.quote_date}", size: 30, style: :bold
  end

  def line_items
    text "Customer \##{@quote.customer.customer_fname}"
    text "Manufacturer \##{@quote.manufacturer.manufacturer_name}"
    text "Series \##{@quote.series.series_number}"
    text "Model \##{@quote.model.model_number}"
    text "Attachment \##{@quote.attachment.attachment_feature}"
    text "Implement \##{@quote.implement.implement_feature}"
    text "Front Tire Replacements \##{@quote.tire_replacement_front.front_tires}"
    text "Rear Tire Replacements \##{@quote.tire_replacement_rear.rear_tires}"
  end



 end
