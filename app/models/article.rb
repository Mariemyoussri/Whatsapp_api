class Article < ApplicationRecord
  include PgSearch::Model
  multisearchable :against => [:title => 'A', :description => 'B']
  pg_search_scope :search_title, against: [[:title, 'A']], :using => [:tsearch, :trigram]
end
