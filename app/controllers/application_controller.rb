class ApplicationController < ActionController::Base

    skip_before_action :verify_authenticity_token

    def redirect_to_https
        redirect_to :protocol => "https://" unless (request.ssl? || request.local?)
    end
end
