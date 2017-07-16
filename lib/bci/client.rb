module Bci
  # The class hub for all BCI APIs
  class Client
    def initialize(params)
      api_key = params[:key]

      @hipotecario = Bci::Hipotecario.new(api_key)
      @consumo = Bci::Consumo.new(api_key)
      @beneficios = Bci::Beneficios.new(api_key)
      @stats = Bci::Stats.new(api_key)
    end

    def hipotecario
      raise 'Client is undefined' unless @hipotecario
      @hipotecario
    end

    def consumo
      raise 'Client is undefined' unless @consumo
      @consumo
    end

    def beneficios
      raise 'Client is undefined' unless @beneficios
      @beneficios
    end

    def stats
      raise 'Client is undefined' unless @stats
      @stats
    end
  end
end
