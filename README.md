# Rails 7 Starter with ESBuild

## Development server

```
> foreman start -f Procfile.dev
```

## Testing

RSpec and Cuprite

* https://github.com/rubycdp/cuprite

## Features

* [Devise](https://github.com/heartcombo/devise) for Authentication
* [Annotate models](https://github.com/ctran/annotate_models)
* [Factory Bot](https://github.com/thoughtbot/factory_bot_rails) to generate factories / fixtures
* [FFaker](https://github.com/ffaker/ffaker) for generating random test data

## Weird things / Gotchas

1. If you clobber the assets and then run a system spec, the spec will fail because the css and js bundles are not available (_ActionView::Template::Error: The asset "application.css" is not present in the asset pipeline._). This is very weird because the jsbundling gem defines [a rake task](https://github.com/rails/jsbundling-rails/blob/main/lib/tasks/jsbundling/build.rake) that should augment _test:prepare_, which runs in [preparation of RSpec](https://github.com/rspec/rspec-rails/blob/main/lib/rspec/rails/tasks/rspec.rake). Because of this, I had to create a support file ([spec/support/assets.rb](https://github.com/cionescu/rails-7-new-esbuild/blob/e50cdf3bd790ba26ffcf5bff7f0596aac4d1173c/spec/support/assets.rb)) to force creating the js/css bundles before a system spec runs.
