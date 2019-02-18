# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- All methods in Faker::Avatar, Faker::Fillmurray, Faker::LoremFlickr,
  Faker::LoremPixel, and Faker::Placeholdit now take keyword arguments.
- Faker::Fillmurray.image takes a `size` argument (e.g., 100x100),
  rather than separate width and height arguments.
