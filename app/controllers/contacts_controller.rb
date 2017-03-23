class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    return "index.html.erb"
  end
  def new
    return "new.html.erb"
  end
  def create
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
