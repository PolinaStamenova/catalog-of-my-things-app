require_relative "spec_helper"

describe Movie do
  describe "#Movie" do
    let(:movie) {Movie.new()}
    it "shoud return instance of Item" do
      expect(movie).to be_instance_of Movie
      expect(movie).to be_kind_of Item
    end
  end

  describe "#can_be_archieved?" do
    let(:movie) {Movie.new(silet: true, publish_date: "2020-05-05")}
    it "should return true" do
      expect(movie.move_to_archive).to be_truthy
    end
  end
end