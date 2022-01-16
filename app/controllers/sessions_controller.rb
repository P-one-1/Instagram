class SessionsController < Devise::SessionsController
  def new
    super
  end

  # POST /resource/sign_in
  def create
    self.resource = warden.authenticate!(auth_options)
    set_flash_message(:notice, :signed_in) if is_navigational_format?
    sign_in(resource_name, resource)
    if !session[:return_to].blank?
      redirect_to session[:return_to]
      session[:return_to] = nil
    else
      respond_with resource, :location => after_sign_in_path_for(resource)
    end
  end
  # def create
  #   self.resource = warden.authenticate!(auth_options)
  #   set_flash_message!(:notice, :signed_in)
  #   sign_in(resource_name, resource)
  #   yield resource if block_given?
  #   respond_with resource, location: after_sign_in_path_for(resource)
  # end

    # DELETE /resource/sign_out
    def destroy
      signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
      set_flash_message! :notice, :signed_out if signed_out
      yield if block_given?
      respond_to_on_destroy
    end
end
