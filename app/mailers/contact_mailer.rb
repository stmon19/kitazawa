class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.contact.subject
  #
  def contact(subject:, message:, mail_address:, name:)
    @subject      = subject
    @message      = message
    @mail_address = mail_address
    @name         = name

    mail to: Rails.application.secrets.action_mailer[:mail_to.to_s], subject: "[CONTACT from HOMEPAGE] #{@subject}", from: @mail_address
  end
end
