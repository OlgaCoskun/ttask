Rails.application.routes.draw do

  resources :commits, only: :index
  resources :import_commits, only:[:new, :create]
  root to: 'import_commits#new'

end
