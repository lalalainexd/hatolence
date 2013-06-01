require "spec_helper"

module Hatolence
  describe VictimCount do

    it "returns a hash of all vicitm counts" do
      VCR.use_cassette('all_victim_count') do
        expect(VictimCount.all.count).to eq 16
      end
    end

    describe ".filter_by_bias" do
      it "returns filtered results by one bias" do
        VCR.use_cassette('cat_bias_victim_count') do
          results = VictimCount.filter_by_bias("cat")
          expect(results.count).to eq 4
        end

      end

      it "returns filtered results by multiple biases" do
        VCR.use_cassette('cat_and_turtle_bias_victim_count') do
          results = VictimCount.filter_by_bias("cat", "turtle")
          expect(results.count).to eq 8
        end

      end

    end

    describe ".filter_by_offense" do

      it "returns filtered results by one offense" do
        VCR.use_cassette('poked_offense_victim_conut') do
          results = VictimCount.filter_by_offense("poked")
          expect(results.count).to eq 4
        end

      end

      it "returns filtered results by mulitple offenses" do
        VCR.use_cassette('poked_and_dropped_offense_victim_count') do
          results = VictimCount.filter_by_offense("poked", "dropped", "vandalism")
          expect(results.count).to eq 12
        end

      end
    end

  end
end
