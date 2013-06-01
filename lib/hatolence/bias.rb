module Hatolence
  class Bias

    def self.all
      result = RestClient.get "http://localhost:8080/api/biases.json"
      JSON.parse(result)
    end
  end
end
