module Counter
    def word_count
        !body.nil? ? body.split(" ").length : 0
    end
end