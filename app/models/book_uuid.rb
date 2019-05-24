# frozen_string_literal: true

class BookUuid < ApplicationRecord
  belongs_to :author_uuid
end
