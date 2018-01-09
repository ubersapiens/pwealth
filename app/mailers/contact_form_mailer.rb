class ContactFormMailer < ApplicationMailer
  default from: "contact@pardiniwealth.com"
  layout 'mailer'

  def contact_form_email(contact)
    @contact = contact
    mail(to: @contact.email, subject: 'Sample Email')
  end
end
