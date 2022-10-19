class Company < ActiveRecord::Base

    enum size: ["1-100", "100-500", "500-2000", "2000+"]
end
