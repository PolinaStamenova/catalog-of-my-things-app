require "date"

class Item

  attr_accessor :archieved
  attr_reader :publish_date

  def initialize(publish_date:)
    @id = Time.now.to_i
    @publish_date = publish_date
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

# p Item.new(publish_date: "2020-05-05").move_to_archive

