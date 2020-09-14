Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'pull_requests/index'
  get 'pull_requests/search'

  root 'pull_requests#search'
end
