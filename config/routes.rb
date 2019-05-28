Rails.application.routes.draw do
  root to: 'import_commits#new'

  resources :commits, only: [:index] do
    delete 'remove_multiple', on: :collection
  end
  resources :import_commits, only:[:new, :create]
end
