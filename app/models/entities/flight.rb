# frozen_string_literal: false

require 'dry-struct'
require 'dry-types'

module ComfyWings
  module Entity
    # class for flight entitity
    class Flight < Dry::Struct
      include Dry.Types

      attribute :id,              Integer.optional
      attribute :origin,          Strict::String
      attribute :destination,     Strict::String
      attribute :departure_time,  Strict::String
      attribute :arrival_time,    Strict::String
    end
  end
end
