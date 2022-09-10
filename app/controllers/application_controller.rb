class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
   get "/crimes" do
    crimes=Crime.all 
    crimes.to_json(include: :police_station)
  end

   get '/police_stations' do
    police_station =PoliceStation.all
    police_station.to_json
  end
  post "/crimes" do
   crime=Crime.create(params
    # title:params[:title],
    # area:params[:area],
    # description:params[:description],
    # police_station_id:params[:police_station_id]
   
    )
   crime.to_json(include: :police_station)
  end

end
