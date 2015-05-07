class ContactFormsController < InheritedResources::Base

  private

    def contact_form_params
      params.require(:contact_form).permit(:email, :name, :message)
    end
end

