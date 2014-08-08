class Visit < ActiveRecord::Base
  belongs_to :human
  belongs_to :location

  scope :ordinate_indietro, ->{order("visits.date DESC")}

  delegate :tessera_sanitaria, to: :human, allow_nil: true

  def ora
    hour.strftime("%H:%M")
  end

  def self.el_triage
    [
      [ 'bianco', 1],
      [ 'verde', 2],
      [ 'giallo', 3],
      [ 'rosso', 4],
    ]
  end
  def triage_to_s
    Visit.el_triage[triage][0]
  end

  def operatore
    Human.find(doctor)
  end

  def modificabile?
     osservazione or (Time.now - created_at ) < 1.hour
   end
end
