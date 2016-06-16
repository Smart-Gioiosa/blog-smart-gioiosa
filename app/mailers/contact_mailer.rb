class ContactMailer < ApplicationMailer
  def new_contact_message(contact)
    @contact = contact
    mail(to: "info@smartgioiosa.it", from: @contact.email, subject: @contact.subject)
   end
end
