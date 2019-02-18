# frozen_string_literal: true

require "simplecov"
SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
SimpleCov.start do
  add_filter [".bundle", "lib/extensions", "test"]
end

require "test/unit"
require "rubygems"
require "yaml"
require "faker-core"

YAML::ENGINE.yamler = "psych" if defined? YAML::ENGINE
require File.expand_path(File.dirname(__FILE__) + "/../lib/faker-image")

# configure I18n
locales_path = File.expand_path(File.dirname(__FILE__) + "../lib/locales")
I18n.available_locales = Dir[locales_path + "/*"].map do |file|
  file.split(".").first
end
