# frozen_string_literal: true

# Released under the MIT License.
# Copyright, 2012-2016, by Tony Arcieri.
# Copyright, 2014-2022, by Samuel Williams.
# Copyright, 2015, by Donovan Keme.

source 'https://rubygems.org'

gemspec

group :maintenance, optional: true do
	gem "bake-modernize"
	gem "bake-gem"
end

group :test do
	gem 'benchmark-ips'
	gem "ruby-prof", platform: :mri
end
