require_relative "WordCounter"
class Quote < ApplicationRecord
    include Counter
    include Publishable
end
