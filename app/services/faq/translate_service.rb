module FaqModule
  class TranslateService
    def initialize(in_language, for_language, phrase)
      @in_language = params["in_language"]
      @for_language = params["in_language"]
      @phrase = params["phrase"]
    end
  
  
    def call

    response = HTTParty.get("https://translate.yandex.net/api/v1.5/tr.json/translate?key=#{ENV["SECRET_KEY"]}&text=#{@phrase}&lang=#{@in_language}-#{@for_language}&format=plain")
    response
      
      
    end
  end
end