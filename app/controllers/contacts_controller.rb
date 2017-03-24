class ContactsController < ApplicationController
  def index
    @contacts = current_user.contact 
    return "index.html.erb"
  end
  def new
    return "new.html.erb"
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
    return "create.html.erb"
  end
  def show
    contact_id = params[:id]
    @contact = Contact.find_by(id: contact_id)
    return "show.html.erb"
  end
  def edit
    return "edit.html.erb"
  end
  def update
    return "update.html.erb"
  end
  def destroy
    return "destroy.html.erb"
  end
end
