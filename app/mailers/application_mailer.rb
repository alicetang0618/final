class ApplicationMailer < ActionMailer::Base
  default from: 'reset_password@opendatavisualization.com'
  layout 'mailer'
end