ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "localhost",
  :port => 25,
  :authentication => :login,
  :domain => "bobsdrumschool.com",
  :user_name => "bob+bobsdrumschool.com",
  :password => "sux2bU"  
}