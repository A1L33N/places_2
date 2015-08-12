require 'rspec'
require 'places'

describe Place do

  before () do
    Place.clear
  end
  describe "#name" do
    it 'describes the place' do
      test_place = Place.new("Davie, FL", "My home town")
      expect(test_place.description).to eq 'My home town'
    end
  end

  describe ".all" do
    it 'is empty at first' do
      expect(Place.all).to eq([])
    end
  end

  describe "save" do
    it 'saves a task and description to an array' do
      test_place = Place.new("Portland, OR", "Where I live now")
      test_place.save
      expect(Place.all).to eq([test_place])
    end
  end

  describe ".clear" do
    it 'empties out all of the saved places' do
      test_place = Place.new("Davie, FL", "My home town")
      Place.clear
      expect(Place.all).to eq []
    end
  end
end
