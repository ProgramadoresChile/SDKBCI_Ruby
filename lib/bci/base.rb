module Bci
  # The base class for all api clients
  class Base
    BASE_URL = 'https://api.us.apiconnect.ibmcloud.com/portal-api-developers-desarrollo/sandbox'.freeze

    def initialize(key = nil)
      @api_key = key
    end

    def url
      "#{BASE_URL}/#{submodule}"
    end

    def connector
      raise 'Undefined key' unless @api_key
      RestClient
    end

    def headers
      {
        'x-ibm-client-id' => @api_key,
        accept: 'application/json',
        content_type: 'application/json'
      }
    end

    def response_checker(response)
      response_code = response.code.to_s
      raise 'Not a valid response' unless %w[200 201].include? response_code

      JSON.parse(response.body)
    end

    def submodule
      raise 'This should be overriden'
    end
  end
end
