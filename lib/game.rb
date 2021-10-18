require_relative "item"

class Game < Item

  attr_accessor :multi_player, :last_played

  def initialize(params = {})
    super
    @multi_player = params[:multi_player]
    @last_played = params[:last_played]
  end

  private

  def can_be_archieved?
    return true if super && last_plyed_older_than?

    false
  end

  def last_plyed_older_than?
  return true if Time.now.year - Date.parse(@last_played).year > 2

  false
  end
end