require_relative "spec_helper"

describe Game do
  describe "#Game" do
    let(:game) {Game.new()}
    it "shoud return instance of Item" do
      expect(game).to be_instance_of Game
      expect(game).to be_kind_of Item
    end
  end

  describe "#can_be_archieved?" do
    let(:game) {Game.new(last_played: "1888-05-05", publish_date: "1888-05-05")}
    it "should return true" do
      expect(game.move_to_archive).to be_truthy
    end
  end

  describe "#can_be_archieved?" do
    let(:game) {Game.new(last_played: "2021-05-05", publish_date: "2020-05-05")}
    it "should return false" do
      expect(game.move_to_archive).to be_falsy
    end
  end
end