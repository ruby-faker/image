# frozen_string_literal: true

module Faker
  class Fillmurray < Base
    class << self
      def image(size: "300x300", grayscale: false)
        raise ArgumentError, "Size should be specified in format 300x300" unless size =~ /^[0-9]+x[0-9]+$/
        raise ArgumentError, "Grayscale should be a boolean" unless [true, false].include?(grayscale)

        width, height = size.split("x")
        grayscale == true ? "https://fillmurray.com/g/#{width}/#{height}" : "https://fillmurray.com/#{width}/#{height}"
      end
    end
  end
end
