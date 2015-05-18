class Metric < ActiveRecord::Base
  QUOTA = (5..100).step(5).to_a
end
