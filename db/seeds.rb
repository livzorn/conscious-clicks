Goal.destroy_all
Bookmark.destroy_all
UserMood.destroy_all
UserMessageSet.destroy_all
User.destroy_all
MessageSet.destroy_all
Mood.destroy_all

olivia = User.create!(name: "Olivia", email: "olivia@zorn.com", password: "lewagon")
puts "Created user Olivia"

conscious_clicks = User.create(name: "Conscious Clicks", email: "admin@consciousclicks.org", password: "lewagon")
puts "Created user Conscious Clicks"

# positive = MessageSet.create(theme: "Positive Affirmations",
#   messages: ["I deserve wonderful things",
#   "I am an amazing person!",
#   "All I can do is try my best",
#   "I choose what I become",
#   "I’ll let go of things I can’t control",])


ads = MessageSet.new(theme: "Advertising",
  messages: ["Ask yourself this before making any purchase; 'but what if I don't?'",
  "How can you buy less stuff that you don't need?",
  "'Do I really need this?' 7 things to ask yourself before you buy:"],
  link: ["https://www.becomingminimalist.com/what-if-i-dont/",
    "https://www.honestlymodern.com/how-to-really-buy-less-stuff-we-do-not-need/",
    "https://ha-na.nl/2020/07/do-i-really-need-this-before-u-buy/"]
)
ads.user = conscious_clicks
ads.save!

# ads = MessageSet.create(theme: "Advertising",
#   messages: ["I am too smart to be brainwashed by ads",
#   "I won’t be tricked into buying things I don’t need",
#   "How are ads trying to affect me today?",
#   "What are algorithms assuming about me?",
#   "When I see an ad, I take a deep breath and ignore it.",
#   "Do I realllly need that thing I want to buy?"])

# exams = MessageSet.new(theme: "Deadlines",
#   messages: ["A goal is a dream with a deadline.",
#     "Never do tomorrow what you can do today.",
#     "What will make today a win for you?",
#     "Trust yourself, you know more than you think you do.",
#     "Either you run the day or the day runs you."])
# exams.user = conscious_clicks
# exams.save

# social = MessageSet.new(theme: "Social Media",
#   messages: ["I won't compare myself to strangers on the internet."])
# social.user = conscious_clicks
# social.save

# social = MessageSet.create(theme: "Social Media",
#   messages: ["Spend a few hours without your phone today.",
#     "No one's life is as perfect as it seems on Instagram.",
#     "Resist the instinct to click on Instagram.",
#     "I won't compare myself to strangers on the internet.",
#     "Stop scrolling and enjoy being alive!",
#     "Will checking social media make me happier today?"])

# beauty = MessageSet.new(theme: "Beauty Standards",
#   messages: ["My imperfections are what make me perfect.",
#     "I'm beautiful as I am",
#     "I am at peace with who I am",
#     "There’s no one I’d rather be than me",
#     "I won't let society choose my definition of beauty."])
# beauty.user = conscious_clicks
# beauty.save

# loneliness = MessageSet.new(theme: "Isolation",
#   messages: ["Check in with someone you care about.",
#     "Who could you reach out to today?",
#     "Am I intentionally or accidentally isolating myself?",
#     "Performing small acts of kindness release endorphins that improve our mood."])
# loneliness.user = conscious_clicks
# loneliness.save

# climate = MessageSet.new(theme: "Climate change",
#   messages: ["What's one small thing I can do to help the environment?",
#     "If it's wrapped in plastic, I'll think twice about buying it.",
#     "If I can, I'll walk instead of driving.",
#     "How can I produce less trash today?"])
# climate.user = conscious_clicks
# climate.save

# gender = MessageSet.new(theme: "Gender Roles",
#   messages: ["blah blah blah Traditional gender roles 1.",
#     "blah blah blah Traditional gender roles 2.",
#     "blah blah blah Traditional gender roles 3.",
#     "blah blah blah Traditional gender roles 4.",
#     "blah blah blah Traditional gender roles 5.",
#     "blah blah blah Traditional gender roles 6.",
#     "blah blah blah Traditional gender roles 7."])
# gender.user = conscious_clicks
# gender.save

# fake = MessageSet.new(theme: "Fake news",
#   messages: ["Do you know and trust the source of the article you're reading?",
#     "Full Fact and Snopes are two of many great fact-checking websites.",
#     "Did you read beyond the headline of the article?"])
# fake.user = conscious_clicks
# fake.save

puts "Created Message Sets"

# time = MessageSet.create(theme: "Time management",
#   messages: ["blah blah blah Time management 1.",
#     "blah blah blah Time management 2.",
#     "blah blah blah Time management 3.",
#     "blah blah blah Time management 4.",
#     "blah blah blah Time management 5.",
#     "blah blah blah Time management 6.",
#     "blah blah blah Time management 7.",])

UserMessageSet.create!(user: User.first, message_set: MessageSet.first)
UserMessageSet.create!(user: User.last, message_set: MessageSet.last)

puts "gave Olivia 1 message set"

ecstatic = Mood.create!(emoji: "🤩", name: "ecstatic", happiness_level: 6)
happy = Mood.create!(emoji: "😄", name: "happy", happiness_level: 5)
okay = Mood.create!(emoji: "🙂", name: "okay", happiness_level: 4)
average = Mood.create!(emoji: "😐", name: "average", happiness_level: 3)
down = Mood.create!(emoji: "😔", name: "down", happiness_level: 2)
sad = Mood.create!(emoji: "😣", name: "sad", happiness_level: 1)

puts "Created 6 moods"

UserMood.create!(mood_id: sad.id, user: olivia, date: (Date.today - 6))
UserMood.create!(mood_id: down.id, user: olivia, date: (Date.today - 5))
UserMood.create!(mood_id: average.id, user: olivia, date: (Date.today - 4))
UserMood.create!(mood_id: okay.id, user: olivia, date: (Date.today - 3))
UserMood.create!(mood_id: happy.id, user: olivia, date: (Date.today - 2))
UserMood.create!(mood_id: ecstatic.id, user: olivia, date: (Date.today - 1))

puts "gave Olivia 6 mood check-ins"
