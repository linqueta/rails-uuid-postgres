# frozen_string_literal: true

class Author < ApplicationRecord
  default_scope { order(:created_at) }
end
