class Entry < Sequel::Model
  many_to_one :streak
end
