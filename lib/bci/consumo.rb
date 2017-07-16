require 'bci/base'

module Bci
  # The class for BCI consumo API
  class Consumo < Base
    def submodule
      'creditos_consumo'
    end

    def simulate(params)
      response_checker(connector.post(url, params.to_json, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end
  end
end
