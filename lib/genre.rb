# require_relative "item"


class Genre

  attr_reader :items
  attr_accessor :name, :items, :id

  def initialize(params = {})
    @id = Time.now.to_s
    @name = params[:name]
    @items = []
  end

  def add_item(item)
    @items << item
    item.add_genre self
  end
end