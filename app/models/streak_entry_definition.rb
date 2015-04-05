require 'json'

class StreakEntryDefinition
  attr_accessor :name, :type

  def to_json(opts={})
    {name: @name, type: @type}.to_json(opts)
  end

  def self.from_hash(h)
    ret=StreakEntryDefinition.new
    ret.name=h['name']
    ret.type=h['type']
    ret
  end
end
