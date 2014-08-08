class SchedaMedica < ActiveRecord::Base


  belongs_to :human, primary_key: :cu, foreign_key: :cu
end
