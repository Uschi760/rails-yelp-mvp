# frozen_string_literal: true

# rubocop:enable
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurant
  resources :review
end
