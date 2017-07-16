require 'bci/base'

module Bci
  # The class for BCI beneficios API
  class Beneficios < Base
    def submodule
      'beneficios'
    end

    def shopping
      local_url = "#{url}/descuentos-shopping"
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end

    def store
      local_url = "#{url}/productos-tienda"
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end

    def health_and_beauty
      local_url = "#{url}/descuentos-salud-belleza"
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end

    def online_sales
      local_url = "#{url}/descuentos-venta-online"
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end

    def outdoors
      local_url = "#{url}/descuentos-panoramas"
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end

    def flavors
      local_url = "#{url}/descuentos-sabores"
      response_checker(connector.get(local_url, headers))
    rescue RestClient::InternalServerError => e
      puts e
    end
  end
end
