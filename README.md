# BackpackUi

BackpackUI is a Rails engine that provides a set of reusable UI components for Rails applications. Currently, it
includes a Button component.

## Usage

To use the Button component, add the following to your view:

```erb
<%= render(BackpackUi::ButtonComponent.new(text: "Click me", icon: "check", type: 'button', options: { classification: 'primary', 
size: 'medium' })) %>
```

The `classification` option can be one of `primary`, `secondary`, `tertiary`, `outline`, `no_outline`, `outline_dark`, `link`, or `delete`. The `size` option can be one of `small`, `medium`, or `large`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "backpack_ui"
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install backpack_ui
```

## Configuring a Rails application
Add the following to your `app/assets/stylesheets/application.css` file:

```css
*= require backpack_ui/application
```

Add the following to your `app/assets/javascripts/application.js` file:

```javascript
import "backpack_ui/application"
```

Add the following to your `app/config/routes.rb` file:

```ruby
mount BackpackUi::Engine => "/backpack_ui"
```


## Running locally

To run the engine locally, clone the repository and run the following commands:

```bash
$ bundle install
$ cd test/dummy
$ bin/rails assets:precompile
$ bin/rails server
```

Then, navigate to `http://localhost:3000` in your browser.

## Contributing

Contribution directions go here.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
