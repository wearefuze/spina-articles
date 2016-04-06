![Spina CMS](http://www.denkwebsite.nl/spinacms.png)

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

In your Spina project, make sure your selected theme has 'articles' added to plugins

```
self.plugins = ['articles']
```

Restart your server and head over to '/admin/pages', you should see your plugin located below the Media Library.

That's all it takes to get the plugin working :)

Now modify away and make your own plugins!

This project rocks and uses MIT-LICENSE.
