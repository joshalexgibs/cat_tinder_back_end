require 'rails_helper'

describe "Ewoks API" do
    it "gets a list of Ewoks" do
        Ewok.create(name:'Felix', age: 2, enjoys: 'Walk in the park', img: '')
        
        get '/ewoks'
        
        json = JSON.parse(response.body)
        
        expect(response).to be_success
        
        expect(json.length).to eq 1
    end
    
    it "creates a ewok" do
        ewok_params = {
            ewok: {
                name: 'Buster',
                age: 4,
                enjoys: 'Meow Mix, and plenty of sunshine.',
                img: ''
            }
        }
        
        post '/ewoks', params: ewok_params
        
        expect(response).to be_success
        
        new_ewok = Ewok.first
        
        expect(new_ewok.name).to eq('Buster')
    end
    
    it "rejects missing ewok name" do
        ewok_params = {
            ewok: {
                age: 4,
                enjoys: "Meow Mix, and plenty of sunshine."
            }
        }
        post '/ewoks', params: ewok_params
        
        expect(response.status).to eq 422
        
        json = JSON.parse(response.body)
        
        expect(json['name']).to include "can't be blank"
    end
    
    it "rejects missing ewok age" do
        ewok_params = {
            ewok: {
                name: "Tommy",
                enjoys: "Meow Mix, and plenty of sunshine."
            }
        }
        post '/ewoks', params: ewok_params
        
        expect(response.status).to eq 422
        
        json = JSON.parse(response.body)
        
        expect(json['age']).to include "can't be blank"
    end
    
    # it "rejects missing ewok enjoys" do
    #     ewok_params = {
    #         ewok: {
    #             name: "Tommy",
    #             age: 6,
    #             enjoys: "Meow Mix, and plenty of sunshine."
    #         }
    #     }
    #     post '/ewoks', params: ewok_params
        
    #     expect(response.status).to eq 422
        
    #     json = JSON.parse(response.body)
        
    #     expect(json['enjoys']).to include "can't be blank"
    # end
end

