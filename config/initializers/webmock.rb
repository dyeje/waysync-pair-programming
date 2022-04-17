require "uri"
require "net/http"
require "webmock"
include WebMock::API

WebMock.enable!

stub_request(:post, "https://carriersrus.biz/quote").
  to_return { |request| { body: JSON.generate({ valid_until: "2022-09-21", cost: rand(100..999) }) } }

stub_request(:post, "https://theshippers.xyz/rate").
  to_return { |request| { body: rand(100..999).to_s } }
