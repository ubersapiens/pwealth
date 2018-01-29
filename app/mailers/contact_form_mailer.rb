class ContactFormMailer < ApplicationMailer
  default from: "contact@pardiniwealth.com"
  layout 'mailer'

  def contact_form_email(contact)
    @contact = contact
    mail(to: "clientservices@padela.com, marketing@padela.com, jf_pardini@hotmail.com",
         subject: @contact.name + " has sent a message on Pardini Wealth.")
  end
end
