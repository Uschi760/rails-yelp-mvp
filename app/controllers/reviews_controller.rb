# frozen_string_literal: true

# rubocop:enable
class ReviewsController < ApplicationController
  before_action :set_restaurant, only: `%i show edit update destroy restaurants`

end
