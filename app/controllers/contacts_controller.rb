class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    #@contact.request = request
    if @contact.save
      ContactMailer.new_contact_message(@contact).deliver_now
      flash[:success] = 'Grazie per il tuo messaggio'
      redirect_to contatti_path
    else
      flash.now[:danger] = 'Non è stato possibile inviare il messaggio'
      render :new
    end

  end

  private
    def contact_params
      params.require(:contact).permit(:name, :surname, :email, :subject, :message)
    end
end
