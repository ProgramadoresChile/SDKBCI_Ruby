require 'bci/base'

module Bci
  # The class for BCI indicadores API
  class Stats < Base
    def submodule
      'info-banco'
    end

    def indicators
      local_url = "#{url}/indicadores"
      puts local_url
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end

    def branch_offices
      local_url = "#{url}/sucursales"
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end

    def atm
      local_url = "#{url}/cajeros"
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end
  end
end
