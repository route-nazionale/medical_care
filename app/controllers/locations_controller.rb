class LocationsController < InheritedResources::Base


    private

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(
        :name, :telephone)
    end

end
