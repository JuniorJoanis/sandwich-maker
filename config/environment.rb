# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
GeneralThingsV2::Application.initialize!

ActionMailer::Base.delivery_method = :smtp

ActionMailer::Base.smtp_settings = {
  :address  => "smtp.gmail.com",
  :port  => 25,
  :user_name  => "testemailjunior@gmail.com",
  :password  => "juniorjoanis",
  :authentication  => :login
}
