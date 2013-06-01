module Hatolence
  class VictimCount

    def self.all
      count = self.new
      count.all
    end

    def self.filter_by_bias(*bias)
      count = self.new
      count.filter_by_bias(bias)
    end

    def self.filter_by_offense(*offense)
      count = self.new
      count.filter_by_offense(offense)
    end

    def all
      result = client_get root_url
      JSON.parse(result)
    end

    def filter_by_bias(*bias)
      result = client_get "#{root_url}?#{biases(bias)}"
      JSON.parse(result)
    end

    def filter_by_offense(*offense)
      result = client_get "#{root_url}?#{offenses(offense)}"
      JSON.parse(result)
    end

    def root_url
      "http://localhost:8080/api/victim_counts.json"
    end

    def client_get request
      result = RestClient.get request
    end

    def biases *bias
      biases = "bias[]=#{bias.join("&bias[]=")}"
      biases.gsub(" ", "%20")
    end

    def offenses *offense
      offenses = "offense[]=#{offense.join("&offense[]=")}"
      offenses.gsub(" ", "%20")
    end

  end
end
