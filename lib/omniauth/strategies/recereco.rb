require "omniauth-recereco/version"

module Omniauth
  module Recereco
    # Your code goes here...
  end
end

# coding: utf-8
require 'omniauth/strategies/oauth'
require 'multi_json'

module OmniAuth
  module Strategies
    class Recereco < OmniAuth::Strategies::OAuth

      option :name, 'recereco'
      option :client_options, {
	      :site => "https://apidev.recereco.com",
	      :request_token_path => "/api/auth/requesttoken",
	      :authorize_path => "/api/auth/authorize",
	      :access_token_path => "/api/auth/accesstoken"
      }

      uid { raw_info['id'] }

      info do
        {
          :userId     => raw_info['userId'],
          :gender     => raw_info['gender'],
          :birthyear     => raw_info['birthyear'],
          :stateCode => raw_info['stateCode']
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get('https://api.recereco.com/api/1/userattr').body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

    end
  end
end
