class NotifyUserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notify_user_mailer.hello.subject
  #
  def hello(user)
    @greeting = 'Hi'
    mail to: user.email
  end
end
