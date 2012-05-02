require 'yaml'
class Emailer < ActionMailer::Base
  default from: "juniorjoanis@example.com"

  def order_email(sandwich)
    @sandwich = sandwich
    @url  = "http://general-things.com"
    quotes = YAML::load(File.open("config/quotes.yml"))
    quote_id = Random.rand(1...4) 
    @personal_quotes = quotes["quotes"][quote_id]
    mail(:to => "junior.joanis@gmail.com", :subject => "We received your order")
  end
end
