Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'top#index' #endrootメソッドを使用することで、Railsがルート/とすべき場所を指定できます。
end
