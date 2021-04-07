class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|

      t.string :source
      t.string :phone_number
      t.json :form_data
      t.string :ip
      t.string :device

      t.timestamps
    end
  end
end
