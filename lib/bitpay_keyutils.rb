# frozen_string_literal: true

libdir = File.dirname(__FILE__)
$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require 'bitpay/keyutils_version'
require 'bitpay/ruby_keyutils'

module Bitpay

  module Keyutils

    class Error < StandardError; end
    # Your code goes here...

  end

end
