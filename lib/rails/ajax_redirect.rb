require 'rails/ajax_redirect/version'
require 'jquery-rails'

module Rails
  # Public: Provides client-side redirection for ajax requests. The client will
  # check successful ajax requests for the custom HTTP status code 279, and will
  # navigate to the new location.
  #
  # Status code 279 has no real significance, and is used as a workaround for
  # the way browsers handle redirects: http://stackoverflow.com/a/304654
  module AjaxRedirect
    STATUS_CODE = 279
    ::Rack::Utils::HTTP_STATUS_CODES[STATUS_CODE] = 'Ajax Redirect'
    ::Rack::Utils::SYMBOL_TO_STATUS_CODE[:ajax_redirect] = STATUS_CODE

    # Internal: Included in ActionController::Base to override `redirect_to`.
    module Concern

      # Override: Automatically respond with a status of :ajax_redirect if it's
      # an ajax request.
      def redirect_to(options = {}, response_status = {})
        if request.xhr?
          super options, response_status.merge(status: :ajax_redirect)
        else
          super
        end
      end
    end

    # Internal: Include the module in all controllers.
    class Engine < Rails::Engine
      initializer :ajax_redirect do
        ActionController::Base.class_eval do
          include Rails::AjaxRedirect::Concern
        end
      end
    end
  end
end
