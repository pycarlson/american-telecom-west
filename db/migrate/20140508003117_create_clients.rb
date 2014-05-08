class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :logo_url
      t.string :name
      t.string :tag
    end
  end
end
