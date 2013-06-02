require "hatolence/version"

require "rest_client"
require "json"
require "active_support/inflector"

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'bias', 'biases'
end

module Hatolence

end

require "hatolence/http_client"
require "hatolence/params_builder"
require "hatolence/victim_count"
require "hatolence/bias"
require "hatolence/bias_category"
require "hatolence/offense"
