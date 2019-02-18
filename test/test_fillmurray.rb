# frozen_string_literal: true

require_relative "test_helper"

class TestFakerFillmurray < Test::Unit::TestCase
  def setup
    @tester = Faker::Fillmurray
  end

  def test_fillmurray
    assert !@tester.image.match(%r{https:\/\/fillmurray\.com\/(\d+)\/(\d+)}).nil?
  end

  def test_fillmurray_with_size
    assert !@tester.image(size: "100x100").match(%r{https:\/\/fillmurray\.com\/100/100}).nil?
  end

  def test_fillmurray_with_grayscale
    assert @tester.image(grayscale: true).match(%r{https:\/\/fillmurray\.com\/(g?\/?)(\d+)\/(\d+)})[1] == "g/"
  end

  def test_fillmurray_with_incorrect_size_format
    assert_raise ArgumentError do
      @tester.image(size: "300x300s")
    end
  end

  def test_fillmurray_with_incorrect_grayscale
    assert_raise ArgumentError do
      @tester.image(grayscale: "gray")
    end
  end
end
