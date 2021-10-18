require_relative "spec_helper"

describe Item do
  let(:item) {Item.new(publish_date: "2020-05-05")}
  describe "#new" do
    it "should return an instance of Item" do
      expect(item).to be_instance_of Item
      expect(item).to be_kind_of Item
    end
  end

  describe "#publish_date" do
    it "should return '2020-05-05'" do
      expect(item.publish_date).to match "2020-05-05"
    end
  end

  describe "#archieved" do
    it "should return false" do
      expect(item.archieved).to be_falsy
    end
  end

  describe "#move_to_archive" do
    it "should return false" do
      item = Item.new(publish_date: "2020-05-05")
      expect(item.move_to_archive).to be_falsy
    end

    it "should return true" do
      item = Item.new(publish_date: "1888-05-05")
      expect(item.move_to_archive).to be_truthy
    end

    context "check @archieved value " do
      before do
        item = Item.new(publish_date: "2020-05-05")
        item.move_to_archive
      end
      it "should return false" do
        expect(item.move_to_archive).to be_falsy
      end
    end

    context "check @archieved value " do
      before do
        item = Item.new(publish_date: "1888-05-05")
        item.move_to_archive
      end
      it "should return true" do
        expect(item.move_to_archive).to be_falsy
      end
    end
  end
end