require 'spec_helper'

module Hatolence
  describe Offense do

    it "returns all offenses" do
      VCR.use_cassette('all_offenses') do
        expect(Offense.all.count).to eq 4
      end
    end

    describe "filter_by" do
      it "returns all offenses of a specific bias category" do
        VCR.use_cassette('person_offense') do
          result = Offense.filter_by("person")
          expect(result.count).to eq 2
        end
      end

      it "returns all biases of a multiple bias categories" do
        VCR.use_cassette('person_and_property_offense') do
          result = Offense.filter_by("person", "property")
          expect(result.count).to eq 4
        end

      end
    end

  end
end
