class QuotesController < ApplicationController
  def show
    @quotes = Quote.find(:all)
  end
end
