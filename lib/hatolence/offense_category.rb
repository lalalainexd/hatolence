module Hatolence
  class OffenseCategory
    include HttpClient

    def self.all
      self.new.all

    end

    def all
      response = get_resource
      JSON.parse(response)
    end

  end
end
