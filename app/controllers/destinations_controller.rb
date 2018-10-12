class DestinationsController < ApplicationController
    def index
        @destinations = Destination.all
        # render json: destinations
    end

    def show
        destination = Destination.find(params[:id])

        geography_id = DestinationGeo.find_by_destination_id(params[:id]).geo_attribute_id
        geography = GeoAttribute.find(geography_id)

        experience_id = DestinationExp.find_by_destination_id(params[:id]).exp_attribute_id
        experience = ExpAttribute.find(experience_id)

        language_id = DestinationLang.find_by_destination_id(params[:id]).lang_attribute_id
        language = LangAttribute.find(language_id)

        render json: {destination: destination, geography: geography, experience: experience, language: language}
    end
end
