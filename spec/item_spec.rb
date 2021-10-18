require_relative "spec_helper"

describe Item do
  let(:item) {Item.new(publish_date: "2020-05-05")}
  describe "#new" do
    it "should return an instance of Item" do
      expect(item).to be_instance_of Item
    end
  end

  describe "#move_to_archive" do
    it "should return false" do
      item = Item.new(publish_date: "2020-05-05")
      item.move_to_archive
      expect(item.archieved).to be_falsy
    end

    it "should return true" do
      item = Item.new(publish_date: "1888-05-05")
      item.move_to_archive
      expect(item.archieved).to be_truthy
    end
  end
end