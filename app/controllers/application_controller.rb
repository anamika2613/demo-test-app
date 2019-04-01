class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    before_action :authenticate_user!


	private
	# Overwriting the sign_out redirect path method
	# def after_sign_up_path_for(resource_or_scope)
	#    new_user_session_url
	# end
	def after_sign_in_path_for(resource)
      applications_path
    end

    def after_sign_out_path_for(resource)
      new_user_registration_path
    end
    
end
