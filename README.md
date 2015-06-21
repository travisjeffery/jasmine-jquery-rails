# jasmine-jquery for Rails

jasmine-jquery via asset pipeline

## Installation

Add this line to your application's Gemfile:

    gem 'jasmine-jquery-rails'

And then execute:

    $ bundle

Assuming you're using the jasmine gem, in your jasmine.yml have:

  src_files:
    - ...
    - assets/jasmine-jquery.js

Or directly include at `/assets/jasmine-jquery.js`

## Usage

Read about jasmine-jquery [here](http://github.com/velesin/jasmine-jquery)

## Fixtures

Files located in the `spec/javascripts/fixtures` directory are available as fixture. For example, if you put a file named `example_fixture.html.haml` in that path it will be available at the
`/spec/javascripts/fixtures/example_fixture` URL.

Just mount the following engine in your `config/routes.rb` file
```ruby
mount JasmineJqueryRails::Engine => "/spec"
```

if you don't want to use the namespace `/spec`, please make sure that you change the jasmine path too.
```js
jasmine.getStyleFixtures().fixturesPath = 'custom_namespace/javascripts/fixtures';
```
or
```js
jasmine.getStyleFixtures().fixturesPath = 'custom_namespace/fixtures';
```
is also possible.

If you want to use a different fixture path, just add this to your `config/initializers`.
```ruby
JasmineJqueryRails.fixture_path = 'my/new/path'
```

### Fixture example

spec/javascripts/fixtures/example_fixture.html.haml
```haml
%h2 Test Fixture
%p Using fixtures
```

the fixture can be loaded like this
```js
loadFixtures('example_fixture');
```

You can also load JSON fixtures, e.g. `spec/javascripts/fixtures/json/bar.json`
```js
getJSONFixture('bar')
```


## Contributing

jasmine-jquery-rails and jasmine-jquery are maintained by [Travis Jeffery](http://github.com/travisjeffery)

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
