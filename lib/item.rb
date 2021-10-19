require "date"
require_relative "genre"

class Item

  attr_accessor :archieved, :publish_date, :genre, :author, :sourse, :label
  attr_reader :id, :items

  def initialize(params = {})
    @id = Time.now.to_i
    @genre = params[:genre]
    @author = params[:author]
    @sourse = params[:sourse]
    @label = params[:label]
    @publish_date = params[:publish_date]
    @archieved = false
    @items = []
  end

  def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def move_to_archive
    return @archieved = true if can_be_archieved?

    @archieved = false
  end

  private

  def can_be_archieved?
    return true if Time.now.year - Date.parse(@publish_date).year  > 10

    false
  end
end

item = Item.new
p item.add_genre(Genre.new(name: "Horror"))
# p item.send :can_be_archieved? how to test the private method but NOT a good way and practice!!!!
