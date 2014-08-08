class VisitsController < InheritedResources::Base
  belongs_to :human, optional: true

  def index
    @q = (parent ? parent.visits : Visit ).search(params[:q])
    @human = parent
    @visits = @q.result(distinct: true)
  end

  def create
    
    @visit = parent.visits.new(visit_params)
    @visit.date = Date.today
    @visit.hour = Time.now
    @visit.location = current_location
    @visit.doctor = current_user.id

    if @visit.save
      redirect_to [parent, @visit]
    else
      render :new
    end
  end
  def update
    @visit = Visit.find(params[:id])
    if @visit.modificabile?
      @visit.date = Date.today
      @visit.hour = Time.now
      @visit.location = current_location
      @visit.doctor = current_user.id

      if @visit.save
        redirect_to [parent, @visit]
      else
        render :new
      end
    else

      redirect_to [@visit.human]
      flash.now.alert = "Tempo a disposizione finito"
    end
  end

  private

  def visit_params
    params.require(:visit).permit(:triage, :anamnesi, :diagnosi, :terapia, :osservazione)
  end

end
