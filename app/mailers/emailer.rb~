class Emailer < ActionMailer::Base
  default from: "juniorjoanis@example.com"

  def order_email(sandwich)
    @sandwich = sandwich
    @url  = "http://general-things.com"
    mail(:to => "junior.joanis@gmail.com", :subject => "We received your order")
  end
end
