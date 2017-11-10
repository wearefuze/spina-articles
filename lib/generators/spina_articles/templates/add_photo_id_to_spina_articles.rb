class AddPhotoIdToSpinaArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :spina_articles, :photo_id, :integer
  end
end
