module Spina
  module Admin
    class ArticlesController < AdminController
      before_action :set_breadcrumb
      before_action :set_article, only: [:edit, :update, :destroy]

      layout "spina/admin/website"

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
          redirect_to spina.admin_articles_url, notice: "Article successfully created"
        else
          render :new
        end
      end

      def update
        if @article.update_attributes(article_params)
          redirect_to spina.admin_articles_url, notice: "Article saved"
        else
          render :edit
        end
      end

      def destroy
        @article.destroy
        redirect_to spina.admin_articles_url, notice: "The article has been deleted"
      end

      private

      def set_article
        @article = Article.find(params[:id])
        add_breadcrumb @article.title
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
