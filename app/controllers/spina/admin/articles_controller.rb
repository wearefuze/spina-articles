module Spina
  module Admin
    class ArticlesController < AdminController
      before_filter :set_breadcrumb
      before_action :set_article, only: [:edit, :update, :destroy]

      layout "spina/admin/admin"

      def index
        @articles = Article.all
      end

      def new
        add_breadcrumb "New article", spina.new_admin_article_path
        @article = Article.new
      end

      def create
        add_breadcrumb "New article"
        @article = Article.new(article_params)
        if @article.save
          redirect_to spina.admin_articles_url
        else
          render :new
        end
      end

      def update
        add_breadcrumb @article.title
        if @article.update_attributes(article_params)
          redirect_to spina.admin_articles_url
        else
          render :edit
        end
      end

      def destroy
        @article.destroy
        redirect_to spina.admin_articles_url
      end

      private

      def set_article
        @article = Article.find(params[:id])
      end

      def set_breadcrumb
        add_breadcrumb "Articles", spina.admin_articles_path
      end

      def article_params
        params.require(:article).permit(:title, :body, :teaser, :author, :draft, :publish_date, :slug, :photo_id)
      end
    end
  end
end
