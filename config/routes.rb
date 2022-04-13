Rails.application.routes.draw do
  authenticate :user, ->(user) { user.admin? } do
    ActiveAdmin.routes(self)
  end

  devise_for :users

  root 'main#index'
end
