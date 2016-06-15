class Admin::ContactsController < Admin::BaseController
  def index
    @contacts = Contact.all.reverse
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.find(params[:id]).destroy
    flash[:notice] = "Contact Message Deleted"
    redirect_to admin_contacts_path
  end
end
