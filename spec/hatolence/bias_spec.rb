require 'spec_helper'

module Hatolence
  describe Bias do

    it "returns all biases" do
      VCR.use_cassette('all_biases') do
        expect(Bias.all.count).to eq 4
      end
    end

    describe "filter_by" do
      it "returns all biases of a specific bias category" do
        VCR.use_cassette('land_bias') do
          result = Bias.filter_by("land")
          expect(result.count).to eq 2
        end
      end

      it "returns all biases of a multiple bias categories" do
        VCR.use_cassette('land_and_water_bias') do
          result = Bias.filter_by("land", "water")
          expect(result.count).to eq 4
        end

      end
    end

  end
end
