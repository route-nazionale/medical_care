class PersonalInfosController < InheritedResources::Base
  defaults :singleton => true
  belongs_to :human

  private

  def personal_info_params
    params.require(:personal_info).permit(:tessera_sanitaria, :annotazioni_mediche)
  end

end
