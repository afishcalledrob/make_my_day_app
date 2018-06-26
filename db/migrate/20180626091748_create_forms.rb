class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.string :title
      t.string :my
      t.string :day
      t.text :form

      t.timestamps
    end
  end
end
