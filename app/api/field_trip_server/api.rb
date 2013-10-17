
class FieldTripServer::API < Grape::API
  version 'v1', :using => :header, :vendor => 'rails4ios'

  resource :schools do
    get :list do
      School.all
    end
  end
end
