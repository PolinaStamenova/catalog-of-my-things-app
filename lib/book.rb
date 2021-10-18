require_relative "item"

class Book < Item

  attr_accessor :publisher, :cover_state

  def initialize(params = {})
    super
    @publisher = params[:publisher]
    @cover_state = params[:cover_state]
  end

  private

  def can_be_archieved?
    return true if super || @cover_state == "bad"

    false
  end
end

# book = Book.new(publisher: "Mike", cover_state: "bad", publish_date: "2020-05-05")
# p book