class CreateSourceacademyComments < ActiveRecord::Migration[5.0]
  def change
    create_table :sourceacademy_comments do |t|
      t.string :code_id
      t.string :integer
      t.string :body
      t.string :text

      t.timestamps
    end
  end
end
