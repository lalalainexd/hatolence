module Hatolence
  module ParamsBuilder

    def params key, values

      values.collect{|v|"#{key}[]=#{v}"}.join("&").gsub(" ", "%20")
    end

  end
end
