# frozen_string_literal: true

require 'roda'
require 'slim'

# Remove this line once integrated with api
require 'yaml'

module ComfyWings
  # Main controller class for ComfyWings
  class App < Roda
    plugin :render, engine: 'slim', views: 'app/presentation/views_html' 
    plugin :assets, css: 'style.css', path: 'app/presentation/assets'
    plugin :common_logger, $stderr
    plugin :halt

    route do |routing|
      routing.assets # load CSS
      response['Content-Type'] = 'text/html; charset=utf-8'

      # GET /
      routing.root do
        view 'home'
      end

      routing.is 'flight' do
        # POST /flight
        routing.post do
          from = routing.params['airport-origin']
          to = routing.params['airport-destination']
          from_date = routing.params['date-start']
          to_date = routing.params['date-end']
          origin = routing.params['airport-origin']
          destination = routing.params['airport-destination']

          trip_results = ComfyWings::Amadeus::TripMapper.new(App.config.AMADEUS_KEY, App.config.AMADEUS_SECRET)
            .search(from, to, from_date, to_date) #, depart_time_origin, depart_time_destination)
          view 'flight', locals: { trips: trip_results, date_range: { from: from_date, to: to_date },
                                 origin_destination: {origin: from, destination: to}}
        end
      end
    end
  end
end
