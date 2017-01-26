# little crazy stuff
class ApplicationMailer < ActionMailer::Base
  default from: ENV['sending_mail_address']
  layout 'mailer'
end
