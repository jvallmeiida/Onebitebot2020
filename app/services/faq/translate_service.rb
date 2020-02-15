module FaqModule
  class TranslateService
    def initialize(params)
      @in_language = params["in_language"]
      @for_language = params["for_language"]
      @phrase = params["phrase"]
    end
  
  
    def call

    response = HTTParty.get("https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20200214T231324Z.6944657eeef2c0df.aabfba6a610902f657a9abc4e238d9b7b3240594&text=#{@phrase}&lang=#{@in_language}-#{@for_language}&format=plain")
    response_json["text"]
      
    end
  end
end
