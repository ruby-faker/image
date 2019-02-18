# frozen_string_literal: true

require "faker-core"

I18n.load_path += Dir[File.join(__dir__, "locales", "**/*.yml")]
I18n.reload! if I18n.backend.initialized?

Dir.glob(File.join(__dir__, "faker", "/**/*.rb")).sort.each { |file| require file }
