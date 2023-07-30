# Uistiti UI kit for Rails
This gem holds everything you need (UI speaking) to create nice User interface.
It comes with CSS style (customisable for sure) and Javascript out of the bout. 
For productivity enhancement i also published a [VsCode extension](https://marketplace.visualstudio.com/items?itemName=UistitiUiKit.uistitirails) wich give you snippets for all the component of the library.

![uistiti_extension](https://github.com/rails-hackathon/team-173/assets/75135824/afdcacc9-81b7-4ec1-9eb2-69e01a21af12)

Example of something that have been built very fast with the GEM [demo](https://polished-field-4685.fly.dev/) (The source code is [here](https://github.com/troptropcontent/uistiti-showcase))

[LookBook of the different component developped during the Hackathon](https://polished-field-4685.fly.dev/uistiti/lookbook/inspect/uistiti/alpha/button/playground)

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

For the CSS & style :
All the CSS files relies on a set of [variables](https://github.com/rails-hackathon/team-173/blob/development/app/assets/stylesheets/uistiti/config/_variables.scss), if you want to start using styled component you can import them in you application.scss file

```css
//app/assets/stylesheets/aplication.scss
@import 'uistiti/config/variables';
```
If you want to update the colors and the different design tokens, you can dowload the file and modify the values you want and import the local file instead of the one from the gem.

Then, for each component you use you can import the related css
```css
//app/assets/stylesheets/aplication.scss
@import 'uistiti/config/variables';
@import 'uistiti/components/alpha/flex';
```

For Component with javascript behavior, there is no much things to do, the controllers are automatically registered through the asset pipe line and import-map:

```javascript
//app/assets/config/manifest.js
...
//= link uistiti_manifest.js
```

```ruby
#config/importmap.rb
...
pin_all_from Uistiti.stimulus_controllers_directory, under: "controllers/uistiti"
```

and you should be good to go, no npm, nothing more 🥰

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
