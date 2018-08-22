class CreateSpinaArticlesTable < ActiveRecord::Migration[5.0]
  def change
    create_table :spina_articles do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.text :teaser
      t.date :publish_date
      t.string :author
      t.integer :draft, default: true
      t.integer :image_id
      t.timestamps
    end
  end
end
