class CreateAdditionalServices < ActiveRecord::Migration
  def change
    create_table :additional_services do |t|
      t.text  :description
    end
  end
end
