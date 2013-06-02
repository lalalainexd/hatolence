module Hatolence
  module HttpClient

    def get_resource params=nil
      result = RestClient.get build_request(params)
    end

    def build_request params
      params ? "#{root_url}?#{params}" : root_url
    end

    def root_url
      "http://hate-crimes.herokuapp.com/api/#{resource}.json"
    end

    def resource
      self.class.to_s.demodulize.underscore.pluralize
    end

  end
end
