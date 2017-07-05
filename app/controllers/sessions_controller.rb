class SessionsController < ApplicationController
  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(current_user))
    set_flash_message! :notice, :signed_out if signed_out
    yield if block_given?
    respond_to_on_destroy
  end
end
