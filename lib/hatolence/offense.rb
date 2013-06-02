module Hatolence
  class Offense
    include HttpClient
    include ParamsBuilder

    def self.all
      self.new.all
    end

    def self.filter_by *category
      self.new.filter_by(category)
    end

    def all
      result = get_resource
      JSON.parse(result)
    end

    def filter_by category
      result = get_resource(params("category",category))
      JSON.parse(result)
    end

  end
end
