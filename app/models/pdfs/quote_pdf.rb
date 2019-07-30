class QuotePdf < Prawn::Document
  def initialize(quote)
    super(top_margin: 70)
    @quote = quote
    quote_date
  end

  def quote_date
    text "Quote \##{@quote.quote_date}", style: :bold
  end
end