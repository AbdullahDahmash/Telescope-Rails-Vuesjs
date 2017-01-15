class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title
      t.text :link
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
