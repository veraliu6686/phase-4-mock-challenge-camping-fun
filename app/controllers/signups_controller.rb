# rails g resource signup camper:belongs_to activity_id:integer time:integer --no-test-framework
# belongs_to or :integer are both working to generate a magriation table
class SignupsController < ApplicationController

    def create
        signup = Signup.create(signup_params)
        if signup.valid?
        render json: signup, status: :created
        else
            render json: {errors: ["validation errors"]}, status: :unprocessable_entity
            #             signup.errors.full_messages
        end
    end

    private
    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end
end
