class HomeController < ApplicationController
    before_action :authenticate_user!

    def index
        @events = Event.current_season("#{Time.current.year}-11-01", "#{Time.current.year + 1}-02-01")
    end 
end 