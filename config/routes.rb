Spina::Engine.routes.draw do
  namespace :admin do
    resources :articles
  end
end
