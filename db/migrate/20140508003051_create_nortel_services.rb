class CreateNortelServices < ActiveRecord::Migration
  def change
    create_table :nortel_services do |t|
      t.text  :description
    end
  end
end
