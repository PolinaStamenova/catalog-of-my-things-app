require_relative "spec_helper"

describe MusicAlbum do
  describe "#MusicAlbum" do
    let(:music_album) {MusicAlbum.new()}
    it "shoud return instance of Item" do
      expect(music_album).to be_instance_of MusicAlbum
      expect(music_album).to be_kind_of Item
    end
  end

  describe "#can_be_archieved?" do
    let(:music_album) {MusicAlbum.new(on_spotify: true, publish_date: "2020-05-05")}
    it "should return true" do
      expect(music_album.move_to_archive).to be_truthy
    end
  end
end