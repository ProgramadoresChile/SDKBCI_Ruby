require 'bci/base'

module Bci
  # The class for BCI hipotecario API
  class Hipotecario < Base
    def submodule
      'creditos_hipotecarios'
    end

    def all
      puts url
      response_checker(connector.get(url, headers))
    end

    def find(id)
      local_url = "#{url}/#{id}"
      response_checker(connector.get(local_url, headers))
    end

    def simulate(id, params)
      local_url = "#{url}/#{id}/simulaciones"
      puts local_url
      response_checker(connector.post(local_url, params.to_json, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end

    def find_rates(id)
      local_url = "#{url}/#{id}/tasas"
      response_checker(connector.get(local_url, headers))
    end
  end
end
