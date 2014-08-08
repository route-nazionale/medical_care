class HumenController < InheritedResources::Base


  def index 
    @q = Human.search(params[:q])
    @humen = @q.result(distinct: true)
  end


    private

    # Never trust parameters from the scary internet, only allow the white list through.
    def human_params
      params.require(:human).permit(
        :cu,
        :cucode,
        :nome,
        :cognome,
        :quartiere,
        :contrada,
        :codicecensimento,
        :idgruppo,
        :idunita,
        :realcredit,
        :intolleranzealimentari,
        :allergiealimentari,
        :allergiefarmaci,
        :fisiche,
        :lis,
        :psichiche,
        :sensoriali,
        :patologie,
        )
    end
end