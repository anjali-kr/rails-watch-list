Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # A user can see all the lists
  # GET "lists"
  # A user can see the details of a given list and its name
  # GET "lists/42"
  # A user can create a new list
  # GET "lists/new"
  # POST "lists"
  resources :lists, only: [:index, :show, :new, :create]

  # A user can add a new bookmark (movie/list pair) to an existing list
  # get "lists/:list_id/bookmarks/new", to: 'bookmarks#new'
  # post "lists/:list_id/bookmarks", to: 'bookmarks/create'
  # # A user can delete a bookmark from a list. How can we make a delete link again?
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'
end
