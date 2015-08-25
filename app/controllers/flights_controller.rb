require 'httparty'
require 'json'

class FlightsController < ApplicationController

	def new
		
	end

	def show


		@flight = Flight.find(params[:id])
		mykey = "AIzaSyCGSo6mi3I9TSk4K8FfPy0yLMJbOSlMIpE"

		@response = HTTParty.post("https://www.googleapis.com/qpxExpress/v1/trips/search?key=#{mykey}", 
		:body => 
		{
		  :request => 
		  {
		    :passengers => 
		    {
		      :kind => "qpxexpress#passengerCounts",
		      :adultCount => @flight.adultCount,
		      :childCount => 0,
		      :infantInLapCount => 0,
		      :infantInSeatCount => 0,
		      :seniorCount => 0
		    },
		    :slice => 
		    [
		      {
		        :kind => "qpxexpress#sliceInput",
		        :origin => @flight.origin[0..2],
		        :destination => @flight.destination[0..2],
		        :date => @flight.date,
		        :maxStops => @flight.maxStops,
		        :maxConnectionDuration => 680,
		        :preferredCabin => @flight.preferredCabin,
		        :permittedDepartureTime => 
		        {
		          :kind => "qpxexpress#timeOfDayRange",
		          :earliestTime => "",
		          :latestTime => ""
		        },
		        :permittedCarrier => ['TK', 'AZ', 'LH', 'OS'],
		        :alliance => "SKYTEAM",
		        :prohibitedCarrier => [ ]
		      }
		    ],
		    :maxPrice => "",
		    :saleCountry => "",
		    :refundable => false,
		    :solutions => 20
		  }
		}.to_json,
		:prettyPrint => true,
		:headers => { 'Content-Type' => 'application/json' })

  	@json = JSON.parse(@response.body)

  end

  def index
  	
  end

  def create
  	
  	@flight = Flight.new(flight_params)

		if @flight.save
			redirect_to @flight
		else
    	render 'new'
    end
	end

	private 

		def flight_params
			params.require(:flight).permit(:origin, :destination, :date, :maxStops, :preferredCabin, :adultCount, :childCount, :infantInSeatCount)
		end

end