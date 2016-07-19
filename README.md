![Spina CMS](http://www.spinacms.com/spinacms.png)

[Visit the website](http://www.spinacms.com)

# Getting Started

This is a News/Blog plugin for Spina CMS based on articles.

```
gem 'spina-articles'
```

Run the migration installer to get started.

```
rails g spina_articles:install
```

This should copy the migration file required to create the Spina::Article model.

Restart your server and head over to '/admin', you should see your plugin located below the Media Library.

That's all it takes to get the plugin working :)

### Consumer views

##### Note: This plugin does not include the controller or view for the customer facing website, just the admin only.

To get you going you'll need to add the routes:

    Spina::Engine.routes.draw do
        resources :articles, only: [:show, :index]
    end

Then create the the controller `articles_controller.rb` inside controllers > spina > articles and include your index and show actions:

    def index
      @articles = Spina::Article.order(created_at: :desc).all
    end

    def show
      @article ||= Article.find_by(slug: params[:id])
    end

##### TODO: Create categories and tagging

This project rocks and uses MIT-LICENSE.
