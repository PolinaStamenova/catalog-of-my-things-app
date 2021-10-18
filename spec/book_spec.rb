require_relative "spec_helper"

describe Book do
  describe "#Book" do
    let(:book) {Book.new()}
    it "shoud return instance of Item" do
      expect(book).to be_instance_of Book
      expect(book).to be_kind_of Item
    end
  end

  describe "#can_be_archieved?" do
    let(:book) {Book.new(cover_state: "bad", publish_date: "2020-05-05")}
    it "should return true" do
      expect(book.move_to_archive).to be_truthy
    end
  end
end