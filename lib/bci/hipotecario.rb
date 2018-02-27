require 'bci/base'

module Bci
  # The class for BCI hipotecario API
  class Hipotecario < Base
    def submodule
      'creditos-hipotecarios'
    end

    def simulate(params)
      local_url = "#{url}/simulaciones"
      response_checker(connector.post(local_url, params.to_json, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end
  end
end
