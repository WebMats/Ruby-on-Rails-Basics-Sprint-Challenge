require_relative "WordCounter"
class Post < ApplicationRecord
    include Counter
    include Publishable
end
