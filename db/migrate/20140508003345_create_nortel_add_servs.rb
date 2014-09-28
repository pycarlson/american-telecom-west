class CreateNortelAddServs < ActiveRecord::Migration
  def change
    create_table :nortel_add_servs do |t|
      t.text  :description
    end
  end
end
