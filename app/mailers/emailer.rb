require 'yaml'
class Emailer < ActionMailer::Base
  default from: "juniorjoanis@example.com"

  def order_email(sandwich)
    @sandwich = sandwich
    @url  = "http://general-things.com"
    quotes = YAML::load(File.open("config/quotes.yml"))
    quote_id = (1..4).to_a.sample
    @personal_quotes = quotes["quotes"][quote_id]
    mail(:to => "make_sandwich@generalthings.com", :subject => "We received your order")
    mail(:to => "junior.joanis@gmail.com", :subject => "We received your order")
  end
end
