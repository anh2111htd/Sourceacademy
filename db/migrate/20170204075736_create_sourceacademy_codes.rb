class CreateSourceacademyCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :sourceacademy_codes do |t|
      t.string :name
      t.text :body
      t.string :author_mail

      t.timestamps
    end
  end
end
