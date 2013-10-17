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
end
