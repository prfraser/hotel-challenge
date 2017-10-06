class CreateEnquiries < ActiveRecord::Migration[5.1]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.text :message

      t.timestamps
    end
  end
end
