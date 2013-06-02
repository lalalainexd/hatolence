module Hatolence
  class Bias

    def self.all
      result = RestClient.get "http://localhost:8080/api/biases.json"
      JSON.parse(result)
    end

    def self.filter_by *category
      result = RestClient.get "http://localhost:8080/api/biases.json?#{categories(category)}"
      JSON.parse(result)
    end

    def self.categories category

      blah = category.collect{|c|"category[]=#{c}"}.join("&")

    end
  end
end
