# GetOrgChart.js for Rails Asset Pipeline

[getorgchart.js](http://www.getorgchart.com/) is an awesome javascript library for creating organizational chart ([documentation](http://www.getorgchart.com/Documentation)).
This gem makes it easy to use it with Rails Asset Pipeline.

## Installation

Add this line to your application's Gemfile:

    gem "org_chart" -v=0.0.3

And then execute:

    $ bundle

## Usage

Add the following to your `app/assets/javascripts/application.js`:

    //= require jquery
    //= require getorgchart


If you want to use the default CSS, add the following to your
`app/assets/stylesheets/application.css`:

    *= require getorgchart

Add an Initializer to `app/config/initializer/{nameofthefile}.rb` and add a line `require 'get_org_data'`.
In your controller create nodes i.e.

    class HomeController < ApplicationController
      def index

        @node = GetOrgData.new
        @node.id = 1
        @node.parent_id = nil
        @node.name = "Irfan"
        @node.title = "CEO"

        @node2 = GetOrgData.new
        @node2.id = 2
        @node2.parent_id = 1
        @node2.name = "Imran"
        @node2.title = "DSE"

      end
    end

Finally add nodes to view simply:

    <%=	 GetOrgData.to_start %>
    <%=	 @node.to_node %>
    <%=	 @node2.to_node %>
    <%=	 GetOrgData.to_end %>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
