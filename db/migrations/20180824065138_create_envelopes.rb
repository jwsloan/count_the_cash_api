Hanami::Model.migration do
  change do
    create_table :envelopes do
      primary_key :id
      column :name, String, null: false
      column :amount, Float, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end