Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :company_person_relations
  resources :company_thing_relations
  resources :company_place_relations
  resources :company_event_relations
  resources :company_attachment_relations
  resources :person_thing_relations
  resources :person_place_relations
  resources :person_event_relations
  resources :person_attachment_relations
  resources :thing_place_relations
  resources :thing_event_relations
  resources :thing_attachment_relations
  resources :place_event_relations
  resources :place_attachment_relations
  resources :event_attachment_relations

  resources :companies
  # get "/companies" => companies#index
  # get "/companies/:id" => companies#show
  # get "/companies/new" => companies#new
  # post "/companies" => companies#create
  # get "/companies/:id/edit" => companies#edit
  # patch "/companies/:id" => companies#update
  # delete "/companies/:id" => companies#destroy

  resources :people
  # get "/people" => people#index
  # get "/people/:id" => people#show
  # get "/people/new" => people#new
  # post "/people" => people#create
  # get "/people/:id/edit" => people#edit
  # patch "/people/:id" => people#update
  # delete "/people/:id" => people#destroy

  resources :things
  # get "/things" => things#index
  # get "/things/:id" => things#show
  # get "/things/new" => things#new
  # post "/things" => things#create
  # get "/things/:id/edit" => things#edit
  # patch "/things/:id" => things#update
  # delete "/things/:id" => things#destroy

  resources :places
  # get "/places" => places#index
  # get "/places/:id" => places#show
  # get "/places/new" => places#new
  # post "/places" => places#create
  # get "/places/:id/edit" => places#edit
  # patch "/places/:id" => places#update
  # delete "/places/:id" => places#destroy

  resources :events
  # get "/events" => events#index
  # get "/events/:id" => events#show
  # get "/events/new" => events#new
  # post "/events" => events#create
  # get "/events/:id/edit" => events#edit
  # patch "/events/:id" => events#update
  # delete "/events/:id" => events#destroy

  resources :attachments
  # get "/attachments" => attachments#index
  # get "/attachments/:id" => attachments#show
  # get "/attachments/new" => attachments#new
  # post "/attachments" => attachments#create
  # get "/attachments/:id/edit" => attachments#edit
  # patch "/attachments/:id" => attachments#update
  # delete "/attachments/:id" => attachments#destroy
end
