# frozen_string_literal: true

# rubocop:enable
class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: `%i show edit update destroy review`

end
