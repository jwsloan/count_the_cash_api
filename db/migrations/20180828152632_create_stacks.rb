Hanami::Model.migration do
  change do
    create_table :stacks do
      primary_key :id

      foreign_key :envelope_id, :envelopes, on_delete: :cascade, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
