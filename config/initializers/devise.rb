Devise.setup do |config|
  config.mailer_sender = ENV['sending_mail_address']
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.confirm_within = 3.days
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.lock_strategy = :failed_attempts
  config.unlock_strategy = :both
  config.maximum_attempts = 20
  config.unlock_in = 1.hour
  config.last_attempt_warning = true
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.min_password_score = 4
end
