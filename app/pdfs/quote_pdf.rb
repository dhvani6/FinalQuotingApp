class QuotePdf < Prawn::Document
  def initialize(quote)
    super(top_margin: 70)
    @quote = quote



    text "Ouote \##{@quote.quote_date}", style: :bold
    text "Customer \##{@quote.customer.customer_fname}"
    text "Manufacturer \##{@quote.manufacturer_id}"
    text "Series \##{@quote.series_id}"
  end

end
