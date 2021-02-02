require "./spec_helper"
require "../src/tucson"


describe Tucson do
  context "The simplest check" do
    it "exposes a Neighborhood class" do
      Tucson::Neighborhood.class
    end
  end

  context "Instantiated classes" do
    it "initialize correctly" do
      neighborhood = Tucson::Neighborhood.new("El Barrio")
      neighborhood.@name.should eq "El Barrio"
      neighborhood.class.should eq Tucson::Neighborhood
      neighborhood.age.should eq 0
    end
    it "can age one time" do
      neighborhood = Tucson::Neighborhood.new("El Barrio")
      neighborhood.become_older
      neighborhood.age.should eq 1
    end
    it "can age like a fine wine" do
      neighborhood = Tucson::Neighborhood.new("El Barrio")
      6.times do
        neighborhood.become_older
      end
      neighborhood.@age.should eq 6
    end
  end
end
