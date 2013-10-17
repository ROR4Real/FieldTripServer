class FieldTripServer::API < Grape::API
  version 'v1', :using => :header, :vendor => 'rails4ios'

  resource :schools do
    http_basic do |user, password|
      user == "course" && password == "password"
    end
    get :list do
      School.all
    end
  end

  resource :field_trips do
    http_basic do |user, password|
      user == "course" && password == "password"
    end
    
    post :create do
      school = School.where(:name => params[:school]).first
      school.field_trips.create!(:name => params[:name]) unless school.nil?
    end
  end

end
