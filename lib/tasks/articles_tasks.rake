namespace :spina_articles do
  task photo_to_image: :environment do
    Spina::Article.find_each do |article|
      article.update_column :image_id, article.photo.image_id
    end
  end
end
