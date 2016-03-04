module OmniAuth
  module Strategies
    class Reddit < OmniAuth::Strategies::OAuth2
      # Over-ride callback_url definition to maintain
      # compatibility with omniauth-oauth2 >= 1.4.0
      #
      # See: https://github.com/intridea/omniauth-oauth2/issues/81
      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
