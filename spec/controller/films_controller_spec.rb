require 'spec_helper'
require 'rails_helper'

RSpec.describe FilmsController , :type => :controller do 

  describe '#index' do

     it 'renders index template' do
   		get :index
       expect(response).to render_template :index
     end

     it 'retrieves a content-type of json' do
     	get :index, format: :json
     	response.header['Content-Type'].should include 'application/json'
     end

	it 'retrieves a content-type of xml' do
     	get :index, format: :xml
     	response.header['Content-Type'].should include 'application/xml'
     end

     it 'renders index template' do
     	get :index, format: :html
     	expect(response).to render_template :index
     end
   end
 end