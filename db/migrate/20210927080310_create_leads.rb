class CreateLeads < ActiveRecord::Migration[6.1]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :email
      t.string :source
      t.string :phone_number
      t.json :form_data
      t.string :ip
      t.string :device
      t.string :article
      t.string :form_name
      t.text :comments

      #enum

      t.integer :status, index: true

      t.timestamps
    end
  end
end
