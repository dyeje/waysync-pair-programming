# WaySync Pair Programming Exercise

## Prerequisites

This repo is using Rails 7, so you'll need at least Ruby 2.7+, though Ruby 3.0+ is recommended. ([installation guide](https://rvm.io/))
You will need `yarn` in order to install JavaScript dependencies. ([installation guide](https://classic.yarnpkg.com/lang/en/docs/install/#mac-stable))
You will need `bundle` in order to install Ruby dependencies. ([installation guide](https://bundler.io/))
You will need `foreman` in order to run the development server. ([installation guide](https://github.com/ddollar/foreman#installation))

## Setup

```
bundle
yarn
rails db:create
```

## Development server

```
bin/dev
```

## Existing Code
This repo is a default Rails 7 application. All that has been done is setup for user accounts via Devise and react-rails via esbuild. You will need to build everything from scratch for the exercise.

### Customers

Customers are represented by the user Devise model.

### Carrier APIs

There are two carrier APIs available (Carriers R Us and The Shippers). You can see the API specs in the `api-specs` folder. All requests to these APIs are mocked, please use [one of these HTTP libraries](https://github.com/bblimke/webmock/blob/master/README.md#supported-http-libraries) to ensure mocking works. The mocks do not catch invalid requests (yet), so I'll let you know if you've made one.

If you would like to see visual documentation, you can load the spec files into [Swagger Editor](https://editor.swagger.io/).

### Testing

RSpec and Cuprite

* https://github.com/rubycdp/cuprite
