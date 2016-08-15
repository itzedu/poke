Rails.application.routes.draw do
  root "pokemons#index"

  get "pokemons" => "pokemons#index"
  get "pokemons/new" => "pokemons#new"
  post "pokemons" => "pokemons#create"
  get "pokemons/:id" => "pokemons#show", as: "pokemon"
  get "pokemons/:id/edit" => "pokemons#edit", as: "edit_pokemon"
  patch "pokemons/:id" => "pokemons#update"
  delete "pokemons/:id" => "pokemons#destroy"
end
