class FieldTripServer::API < Grape::API
  version 'v1', :using => :header
  
  resource :schools do
    
    http_basic do |user, password|
      puts "======= #{user} #{password}"
      user == "course" && password == "password"
    end
    
    get :list do
      School.all
    end
  end
  
  # To test: curl  -u course:password -d "school=Penbrooke Meadows Elementary&name=test" localhost:3000/api/field_trips/create.json
  
  resource :field_trips do
    
    http_basic do |user, password|
      puts "======= #{user} #{password}"
      user == "course" && password == "password"
    end
    
    post :create do
      puts "=== CREATE #{params.inspect}"
      school = School.where(:name => params[:school]).first
      school.field_trips.create!(:name => params[:name]) unless school.nil?
    end
  end
  

end
