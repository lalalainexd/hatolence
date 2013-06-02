module Hatolence
  class VictimCount
    include HttpClient

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
      result = get_resource
      JSON.parse(result)
    end

    def filter_by_bias(*bias)
      result = get_resource(biases(bias))
      JSON.parse(result)
    end

    def filter_by_offense(*offense)
      result = get_resource(offenses(offense))
      JSON.parse(result)
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
