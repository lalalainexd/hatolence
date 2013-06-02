require 'spec_helper'

module Hatolence
  describe OffenseCategory do
    it "returns all BiasCategories" do

      VCR.use_cassette("offense_categories") do
        expect(OffenseCategory.all.count).to eq 2
      end
    end
  end
end
