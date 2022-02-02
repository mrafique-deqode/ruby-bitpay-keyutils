# ruby-bitpay-keyutils

# Using the BitPay Key Utilities Library

This gem provides utilities for use with the BitPay API. It enables creating keys, retrieving public keys, retrieiving private keys, creating the SIN that is used in retrieving tokens from BitPay, and signing payloads for the `X-Signature` header in a BitPay API request.

## Quick Start
### Installation
```bash
gem install 'ruby-bitpay-keyutils'
```

In your Gemfile:

```ruby
gem 'ruby-bitpay-keyutils', :require => 'bitpay_keyutils'
```

Or directly:

```irb
[1] pry(main)> require 'bitpay_keyutils'
=> true
[2] pry(main)> pem = Bitpay::RubyKeyutils.generate_pem
=> "-----BEGIN EC PRIVATE KEY-----\nMHQCAQEEIF2HghUnVK/MbkS+y8PGOoVpswunIgWHd8GTzWvI97e/oAcGBSuBBAAK\noUQDQgAEA0Jz4UdYJZJugoxUn1k4PVoLKOUus3TkRq0xqoHkZL4QIzzxqS1DmGWr\nfb9Eot6w7QcWRWACF/G/xIp6Nap8bA==\n-----END EC PRIVATE KEY-----\n"
[3] pry(main)> sin = Bitpay::RubyKeyutils.generate_sin_from_pem pem
=> "TfEKWr2FcX2XnWxUNPJ3iD5Xe6X5frZb1DG"
[4] pry(main)> priv = Bitpay::RubyKeyutils.get_private_key_from_pem pem
=> "5d8782152754afcc6e44becbc3c63a8569b30ba722058777c193cd6bc8f7b7bf"
[5] pry(main)> pub = Bitpay::RubyKeyutils.get_public_key_from_pem pem
=> "02034273e1475825926e828c549f59383d5a0b28e52eb374e446ad31aa81e464be"
[6] pry(main)> Bitpay::RubyKeyutils.sign "this message", priv
=> "304402207b6d2d59f0e2061519c47744fcdff87e8136f0086aa4b94bd667d62221dfbcb802201a0ce7929eed614ff71972879cd0b31813c9ad7ed0e7bbde4590e9a836007db6"
```

## API Documentation

API Documentation is available on the [BitPay site](https://bitpay.com/api).

## Running the Tests

```bash
$ bundle
$ rspec
```
