class ContactFormsController < InheritedResources::Base
  def create
    @contact_form = ContactForm.new(contact_form_params)
    respond_to do |format|
      if @contact_form.save
        format.html { redirect_to @contact_form, notice: 'Contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contact_form }
        format.js   { render :nothing => true, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
        format.js   { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def contact_form_params
      params.require(:contact_form).permit(:email, :name, :message)
    end
end

