class ContactsController < ApplicationController
  def index
    if current_user
      @contacts = current_user.contacts
      render "index.html.erb"
    else
      flash[:warning] = "You gotta log in!"
      redirect_to "/login"
    end
  end
  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    render "show.html.erb"
  end
  def new
    render "new.html.erb"
  end
  def create
    @contact = Contact.create(
        first_name: params[:first_name],
        middle_name: params[:middle_name],
        last_name: params[:last_name],
        bio: params[:bio],
        phone_number: params[:phone_number,
        email: params[:email],
        user_id: current_user.id
      )
    flash[:success] = "You did it!"
    redirect_to "/contacts/#{@contact.id}"
  end
  
  def edit
    @contact = contac.find_by(id: params[:id]
    render "edit.html.erb"
  end
  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.update(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      bio: params[:bio],
      phone_number: params[:phone_number],
      email: params[:email]
      )
    flash[:success] = "You did it!"
    redirect_to "/contacts/#{@contact.id}"
  end
  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    flash[:success] = "s/he gone"
    redirect_to "/"
  end
end
