class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.text  :description
    end
  end
end
