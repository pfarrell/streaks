require 'sequel'
require 'logger'

$console = ENV['RACK_ENV'] == 'development' ? Logger.new(STDOUT) : nil
DB = Sequel.connect(ENV['PIGEON_DB'] || 'postgres://localhost/streaks',logger: $console)

DB.sql_log_level = :debug
DB.extension(:pagination)
DB.extension(:pg_array, :pg_json)

Sequel::Model.plugin :timestamps
Sequel::Model.plugin :json_serializer

require 'models/user'
require 'models/streak'
require 'models/streak_entry_definition'
require 'models/entry'
