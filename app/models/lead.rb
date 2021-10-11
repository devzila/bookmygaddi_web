class Lead < ApplicationRecord
    #extend Enumerize

    # ======================== ENUMS ================================== #

   # enumerize :status, :in => { new: 1, contacting: 2, won: 3 , lost: 4}, scope: true, predicates: true
end
