require "date"
class Item

  attr_accessor :archieved, :publish_date
  # attr_reader

  def initialize(params = {})
    @id = Time.now.to_i
    @publish_date = params[:publish_date]
    @archieved = false
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

# item = Item.new(publish_date: "2020-05-05")
# p item.send :can_be_archieved?
