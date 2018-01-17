require 'bci/base'

module Bci
  # The class for BCI consumo API
  class Consumo < Base
    def submodule
      'creditos-consumo'
    end

    def all
      response_checker(connector.get(url, headers))
    end

    def find(id)
      local_url = "#{url}/#{id}"
      response_checker(connector.get(local_url, headers))
    end

    def simulate(id, params)
      local_url = "#{url}/#{id}/simulaciones"
      response_checker(connector.post(local_url, params.to_json, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end
  end
end
