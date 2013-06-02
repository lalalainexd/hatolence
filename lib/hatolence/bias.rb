module Hatolence
  class Bias
    include HttpClient

    def self.all
      self.new.all
    end

    def self.filter_by *category
      self.new.filter_by(*category)
    end

    def all
      result = get_resource
      JSON.parse(result)
    end

    def filter_by *category
      result = get_resource(categories(category))
      JSON.parse(result)
    end

    def categories category
      category.collect{|c|"category[]=#{c}"}.join("&")

    end
  end
end
