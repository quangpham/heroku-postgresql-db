class CreateDbs < ActiveRecord::Migration[6.0]
  def change
    create_table :dbs do |t|
      t.string :env_key
      t.string :app_name
      t.string :url

      t.timestamps
    end
    add_index :dbs, :env_key
    add_index :dbs, :app_name
  end
end
