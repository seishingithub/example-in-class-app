Rails.application.routes.draw do
  root to: 'dashboard#index'

  get '/repo_searches/new' => 'repo_searches#new', :as => :new_repo_search
  get '/repo_searches/:id' => 'repo_searches#show', :as => :repo_search
  post '/repo_searches' => 'repo_searches#create'

end
