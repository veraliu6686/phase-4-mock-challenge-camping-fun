# rails g resource camper name age:integer --no-test-framework
class CampersController < ApplicationController
    # rescure_from AvtiveRecord::RecordNotFound, with: :render_not_found

    def index
        camper = Camper.all
        render json: camper
    end

    def show
        camper = Camper.find_by(id:params[:id])
        # camper = Camper.find_by_id(params[:id])

        if camper
        render json: camper, serializer: CamperActivitySerializer, status: :ok
        #  ❌not showing activities, read as camper serializer
        else
            render json: {error: "Camper not found"}, status: :not_found
        end
    end

    def create
        camper = Camper.create(camper_params)
        if camper.valid?
        render json: camper, status: :created
        else
            render json: {errors: ["validation errors"]}, status: :unprocessable_entity
        end
    end

    private

    def camper_params
        params.permit(:name, :age)
    end

    # def render_not_found
    #     render json: {error: "Camper not found"}, status: :not_found
    # end

end
