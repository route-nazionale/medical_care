class Human < ActiveRecord::Base

  has_many :visits
  has_one  :personal_info
  has_one  :scheda_medica, primary_key: :cu, foreign_key: :cu


  delegate :intolleranzealimentari, to: :scheda_medica, allow_nil: true
  delegate :allergiealimentari,     to: :scheda_medica, allow_nil: true
  delegate :allergiefarmaci,        to: :scheda_medica, allow_nil: true
  delegate :fisiche,                to: :scheda_medica, allow_nil: true
  delegate :lis,                    to: :scheda_medica, allow_nil: true
  delegate :psichiche,              to: :scheda_medica, allow_nil: true
  delegate :sensoriali,             to: :scheda_medica, allow_nil: true
  delegate :patologie,              to: :scheda_medica, allow_nil: true

  delegate :tessera_sanitaria,      to: :personal_info, allow_nil: true
  delegate :annotazioni_mediche,    to: :personal_info, allow_nil: true
   



  def abitazione
    "Q#{quartiere}-C#{contrada}"
  end

  def codice_gruppo
    "#{idgruppo}-#{idunita}"
  end

  def to_s
    "#{nome} #{cognome}"
  end
  def ultima_visita
    visits.order(:date).last
  end
end
