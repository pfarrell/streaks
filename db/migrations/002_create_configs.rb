Sequel.migration do
  change do
    create_table(:streaks) do
      primary_key :id
      String :title
      Fixnum :user_id
      column :config, :json, default: Sequel.pg_json([])
      DateTime :created_at
      DateTime :updated_at
    end
  end
end
