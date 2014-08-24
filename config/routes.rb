Rails.application.routes.draw do
  match('/', {via: :get, to: 'artists#index'})
  match('/artists/new', {via: :get, to: 'artists#new'})
  match('/artists', {via: :post, to: 'artists#create'})
  match('/artists/:id', {via: :get, to: 'artists#show'})
  match('/artists/:id', {via: :delete, to: 'artists#destroy'})
  match('/artists/:id/edit', {via: :get, to: 'artists#edit'})
  match('/artists/:id', {via: [:patch, :put], to: 'artists#update'})

  match('/', {via: :get, to: 'tags#index'})
  match('/tags/new', {via: :get, to: 'tags#new'})
  match('/tags', {via: :post, to: 'tags#create'})
  match('/tags/:id', {via: :get, to: 'tags#show'})
  match('/tags/:id', {via: :delete, to: 'tags#destroy'})
  match('/tags/:id/edit', {via: :get, to: 'tags#edit'})
  match('/tags/:id', {via: [:patch, :put], to: 'tags#update'})
end
