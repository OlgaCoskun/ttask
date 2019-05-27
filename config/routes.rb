Rails.application.routes.draw do

  resources :commits
  resources :import_commits, only:[:new, :create]
  root to: 'import_commits#new'

end
