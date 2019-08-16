class AppStats
    attr_reader :posts
    attr_reader :quotes

    def initialize(posts, quotes)
        @posts = posts
        @quotes = quotes
    end

    def posts_count
        @posts.length
    end

    def quotes_count
        @quotes.length
    end

    def posts_word_count
        sum = 0
        for post in @posts
            words = post.body.split(" ")
            sum = sum + words.length
        end
        sum
    end

    def quotes_word_count
        sum = 0
        for quote in @quotes
            words = quote.body.split(" ")
            sum = sum + words.length
        end
        sum
    end

    def total_count
        self.quotes_count() + self.posts_count()
    end

    def total_word_count
        self.posts_word_count() + self.quotes_word_count()
    end

end