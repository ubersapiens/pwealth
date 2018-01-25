class ContactFormMailer < ApplicationMailer
  default from: "contact@pardiniwealth.com"
  layout 'mailer'

  def contact_form_email(contact)
    @contact = contact
    mail(to: "jf_pardini@hotmail.com",
         subject: @contact.message)
  end
end
