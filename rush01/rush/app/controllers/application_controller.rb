class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	def reset
		raise ''
	end
	protected

	def is_connected
		raise ''
		if session[:id] == nil
			redirect_to "/home"
		end
	end

	def is_not_connected
		if session[:id] != nil
			redirect_to "/home"
		end
	end

	def is_admin
		if session[:id] == nil || session[:admin] == false
			redirect_to "/home"
		end
	end

end
