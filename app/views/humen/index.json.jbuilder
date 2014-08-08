json.array!(@humen) do |human|
  json.extract! human, :id, :cu, :cucode, :nome, :cognome, :quartiere, :contrada, :codicecensimento, :idgruppo, :idunita, :realcredit, :intolleranzealimentari, :allergiealimentari, :allergiefarmaci, :fisiche, :lis, :psichiche, :sensoriali, :patologie
  json.url human_url(human, format: :json)
end
