# GetOrgChart.js for Rails Asset Pipeline

[getorgchart.js](http://www.getorgchart.com/) is an awesome javascript library for creating organizational chart ([documentation](http://www.getorgchart.com/Documentation)).
This gem makes it easy to use it with Rails Asset Pipeline.

## Installation

Add this line to your application's Gemfile:

    gem "org_chart"

And then execute:

    $ bundle

## Usage

Add the following to your `app/assets/javascripts/application.js`:

    //= require jquery
    //= require getorgchart


Finally, if you want to use the default CSS, add the following to your
`app/assets/stylesheets/application.css`:

    *= require getorgchart

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request