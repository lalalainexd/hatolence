require 'spec_helper'

module Hatolence
  describe BiasCategory do
    it "returns all BiasCategories" do

      VCR.use_cassette("bias_categories") do
        expect(BiasCategory.all.count).to eq 2
      end
    end
  end
end
