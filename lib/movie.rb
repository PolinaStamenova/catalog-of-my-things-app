require_relative "item"

class Movie < Item

  attr_accessor :silet

  def initialize(params = {})
    super
    @silet = params[:silet]
  end

  private

  def can_be_archieved?
    return true if super || @silet == true

    false
  end
end