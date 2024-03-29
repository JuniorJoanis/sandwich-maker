require 'yaml'
class Emailer < ActionMailer::Base
  default from: "juniorjoanis@example.com"

  def order_email(sandwich, user)
    @sandwich = sandwich
    @url  = "http://general-things.com"
    quotes = YAML::load(File.open("config/quotes.yml"))
    quote_id = (1..4).to_a.sample
    @personal_quotes = quotes["quotes"][quote_id]
    mail(:to => user.email, :subject => "We received your order")
  end
end
