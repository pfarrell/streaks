class Streak < Sequel::Model
  one_to_many :entries
  many_to_one :user

  def definition
    config.map{|x| StreakEntryDefinition.from_hash(x)}
  end
end
