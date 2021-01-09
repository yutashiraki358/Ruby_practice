{"filter":false,"title":"restaurants_searcher.rb","tooltip":"/restaurants_searcher.rb","undoManager":{"mark":4,"position":4,"stack":[[{"start":{"row":0,"column":0},"end":{"row":33,"column":25},"action":"insert","lines":["require 'net/http'","require 'json'","","# 初期設定","KEYID = \"メールに記載されていたアクセスキーをここに入力\"","HIT_PER_PAGE = 100","PREF = \"PREF13\"","FREEWORD_CONDITION = 1","FREEWORD = \"渋谷駅\"","PARAMS = {\"keyid\": KEYID, \"hit_per_page\":HIT_PER_PAGE, \"pref\":PREF, \"freeword_condition\":FREEWORD_CONDITION, \"freeword\":FREEWORD}","","def write_data_to_csv(params)","    restaurants = []","    uri = URI.parse(\"https://api.gnavi.co.jp/RestSearchAPI/v3/\")","    uri.query = URI.encode_www_form(PARAMS)  ","    json_res = Net::HTTP.get uri","    ","    response = JSON.load(json_res)","    ","    if response.has_key?(\"error\") then","        puts \"エラーが発生しました！\"","    end","    for restaurant in response[\"rest\"] do","        rest_name = restaurant[\"name\"]","        restaurants.append(rest_name)","    end","    ","    File.open(\"restaurants_list.csv\", \"w\") do |file|","        file << restaurants","    end","    return puts restaurants","end","","write_data_to_csv(PARAMS)"],"id":1}],[{"start":{"row":4,"column":9},"end":{"row":4,"column":32},"action":"remove","lines":["メールに記載されていたアクセスキーをここに入力"],"id":2},{"start":{"row":4,"column":9},"end":{"row":4,"column":41},"action":"insert","lines":["0caf91ae966275419a300f8a31668a86"]}],[{"start":{"row":0,"column":0},"end":{"row":33,"column":25},"action":"remove","lines":["require 'net/http'","require 'json'","","# 初期設定","KEYID = \"0caf91ae966275419a300f8a31668a86\"","HIT_PER_PAGE = 100","PREF = \"PREF13\"","FREEWORD_CONDITION = 1","FREEWORD = \"渋谷駅\"","PARAMS = {\"keyid\": KEYID, \"hit_per_page\":HIT_PER_PAGE, \"pref\":PREF, \"freeword_condition\":FREEWORD_CONDITION, \"freeword\":FREEWORD}","","def write_data_to_csv(params)","    restaurants = []","    uri = URI.parse(\"https://api.gnavi.co.jp/RestSearchAPI/v3/\")","    uri.query = URI.encode_www_form(PARAMS)  ","    json_res = Net::HTTP.get uri","    ","    response = JSON.load(json_res)","    ","    if response.has_key?(\"error\") then","        puts \"エラーが発生しました！\"","    end","    for restaurant in response[\"rest\"] do","        rest_name = restaurant[\"name\"]","        restaurants.append(rest_name)","    end","    ","    File.open(\"restaurants_list.csv\", \"w\") do |file|","        file << restaurants","    end","    return puts restaurants","end","","write_data_to_csv(PARAMS)"],"id":3},{"start":{"row":0,"column":0},"end":{"row":40,"column":25},"action":"insert","lines":["require 'net/http'","require 'json'","require \"csv\"","","# ���期設定","KEYID = \"メールに記載されていたアクセスキーをここに入力\"","HIT_PER_PAGE = 100","PREF = \"PREF13\"","FREEWORD_CONDITION = 1","FREEWORD = \"渋谷駅\"","PARAMS = {\"keyid\": KEYID, \"hit_per_page\":HIT_PER_PAGE, \"pref\":PREF, \"freeword_condition\":FREEWORD_CONDITION, \"freeword\":FREEWORD}","","def write_data_to_csv(params)","","    restaurants = [[\"名称\",\"住所\",\"営業日\",\"電話番号\"]]","    uri = URI.parse(\"https://api.gnavi.co.jp/RestSearchAPI/v3/\")","    uri.query = URI.encode_www_form(PARAMS)  ","","    json_res = Net::HTTP.get uri","    ","    # JSON.load(response)","    response = JSON.load(json_res)","    ","    if response.has_key?(\"error\") then","        puts \"エラーが発生しました！\"","    end","    for restaurant in response[\"rest\"] do","        rest_info = [restaurant[\"name\"], restaurant[\"address\"], restaurant[\"opentime\"], restaurant[\"tel\"]]","        puts rest_info","        restaurants.append(rest_info)","    end","    ","    CSV.open(\"restaurants_list.csv\", \"w\") do |csv|","        restaurants.each do |rest_info|","            csv << rest_info","        end","    end","    return puts restaurants","end","","write_data_to_csv(PARAMS)"]}],[{"start":{"row":5,"column":9},"end":{"row":5,"column":32},"action":"remove","lines":["メールに記載されていたアクセスキーをここに入力"],"id":4},{"start":{"row":5,"column":9},"end":{"row":5,"column":41},"action":"insert","lines":["0caf91ae966275419a300f8a31668a86"]}],[{"start":{"row":5,"column":0},"end":{"row":5,"column":42},"action":"remove","lines":["KEYID = \"0caf91ae966275419a300f8a31668a86\""],"id":5},{"start":{"row":5,"column":0},"end":{"row":5,"column":30},"action":"insert","lines":["KEYID = ENV['GRNB_ACCESS_KEY']"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":30},"end":{"row":5,"column":30},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1610191372354,"hash":"f9e97febc1b0e33acd9342a9624e2d786d7a164d"}