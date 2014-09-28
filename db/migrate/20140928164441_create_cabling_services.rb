class CreateCablingServices < ActiveRecord::Migration
  def change
    create_table :cabling_services do |t|
      t.text  :description
    end
  end
end
