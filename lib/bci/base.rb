module Bci
  # The base class for all api clients
  class Base
    BASE_URL = 'https://apidevelopers.bci.cl'.freeze

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
        'X-IBM-Client-Id' => @api_key,
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
