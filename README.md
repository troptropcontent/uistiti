# Uistiti UI kit for Rails
This gem holds everything you need (UI speaking) to create nice User interface.
It comes with CSS style (customisable for sure) and Javascript out of the bout. 
For productivity enhancement i also published a [VsCode extension](https://marketplace.visualstudio.com/items?itemName=UistitiUiKit.uistitirails) wich give you snippets for all the component of the library.

![uistiti_extension](https://github.com/rails-hackathon/team-173/assets/75135824/afdcacc9-81b7-4ec1-9eb2-69e01a21af12)


## Usage
How to use the plug in :

## Installation
Add this line to your application's Gemfile:

```ruby
gem "uistiti"
```

And then execute:
```bash
$ bundle
```

Now in your views you can use Uistiti components just as normal ViewComponents :
```ruby
<%= render Uistiti::Alpha::Flex.new(direction: :column, justify_content: :space_between)  do %>
 <%= items %>
<% end %>
```

For the CSS files related to the components are based on variables


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
