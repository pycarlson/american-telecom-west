class CreateAddons < ActiveRecord::Migration
  def change
    create_table :addons do |t|
      t.text  :nortel_intro
      t.text  :nortel_conclusion
      t.text  :cabling_intro
      t.text  :cabling_conclusion
    end
  end
end
