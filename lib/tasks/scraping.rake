namespace :scraping do
  task :scrape => :environment do
    require 'open-uri'
    require 'nokogiri'

    url = 'https://baseball-data.com/player/s/'
    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end

    doc = Nokogiri::HTML.parse(html, nil, charset)

    tds = doc.css('td')
    (0..tds.length/12 - 1).each do |i|
      puts tds[i*12].content
      number = Number.create(value: tds[i * 12].content)
      player = Player.create(value: tds[i *12 + 1].content)
      player.number = number
      if (position = Position.find_by(value: tds[i *12 +2].content)) == nil then
        player.position = Position.create(value: tds[i *12 +2].content)
      else
        player.position = position
      end
      if (birthday = Birthday.find_by(value: tds[i *12 +3].content)) == nil then
        player.birthday = Birthday.create(value: tds[i *12 +3].content)
      else
        player.birthday = birthday
      end
      if (age = Age.find_by(value: tds[i *12 +4].content)) == nil then
        player.age = Age.create(value: tds[i *12 +4].content)
      else
        player.age = age
      end
      if (year = Year.find_by(value: tds[i *12 +5].content)) == nil then
        player.year = Year.create(value: tds[i *12 +5].content)
      else
        player.year = year
      end
      if (height = BodyHeight.find_by(value: tds[i *12 +6].content)) == nil then
        player.body_height = BodyHeight.create(value: tds[i *12 +6].content)
      else
        player.body_height = height
      end
      if (weight = BodyWeight.find_by(value: tds[i *12 +7].content)) == nil then
        player.body_weight = BodyWeight.create(value: tds[i *12 +7].content)
      else
        player.body_weight = weight
      end
      if (blood = BloodType.find_by(value: tds[i *12 +8].content)) == nil then
        player.blood_type = BloodType.create(value: tds[i *12 +8].content)
      else
        player.blood_type = blood
      end
      if (hand = DominantHand.find_by(value: tds[i *12 +9].content)) == nil then
        player.dominant_hand = DominantHand.create(value: tds[i *12 +9].content)
      else
        player.dominant_hand = hand
      end
      if (place = Birthplace.find_by(value: tds[i *12 +10].content)) == nil then
        player.birthplace = Birthplace.create(value: tds[i *12 +10].content)
      else
        player.birthplace = place
      end
      if (income = Income.find_by(value: tds[i *12 +11].content)) == nil then
        player.income = Income.create(value: tds[i *12 +11].content)
      else
        player.income = income
      end
    end

  end
end
