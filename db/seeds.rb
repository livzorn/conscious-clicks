Goal.destroy_all
Bookmark.destroy_all
UserMood.destroy_all
UserMessageSet.destroy_all
MessageSet.destroy_all
User.destroy_all
Mood.destroy_all

olivia = User.create!(name: "Olivia", email: "olivia@zorn.com", password: "lewagon")
puts "Created user Olivia"

conscious_clicks = User.create(name: "Conscious Clicks", email: "admin@consciousclicks.org", password: "lewagon")
puts "Created user Conscious Clicks"

shia = User.create(name: "Shia LaBeouf", email: "shia@justdoit.com", password: "justdoit")
puts "Created Shia LaBeouf"

oprah = User.create(name: "Oprah Winfrey", email: "oprah@winfrey.com", password: "yougetacar")
puts "Created Oprah"

# positive = MessageSet.new(theme: "Positive Affirmations",
#   messages: ["I deserve wonderful things",
#   "I am an amazing person!",
#   "All I can do is try my best",
#   "I choose what I become",
#   "I’ll let go of things I can’t control",], link: ["http://www.consciousclicks.org/"])
# positive.user = conscious_clicks
# positive.save!

# just_do_it = MessageSet.new(theme: "Motivate Yourself", messages: ["Just do it",
#   "Don't let your dreams be dreams", "Make your dreams come true", "Nothing is impossible",
#   "Yes you can", "If you're tired of starting over, stop giving up"],
#   link: ["https://www.youtube.com/watch?v=ZXsQAXx_ao0"], public: true)
# just_do_it.user = shia
# just_do_it.save!

# oprah_quotes = MessageSet.new(theme: "Words of Wisdom", messages: ["Surround yourself only with people who are going to take you higher.",
#   "You get in life what you have the courage to ask for.",
#   "The more you praise and celebrate your life, the more there is in life to celebrate.",
#   "Breathe. Let go. And remind yourself that this very moment is the only one you know you have for sure.",
#   "Forgiveness is giving up the hope that the past could have been any different.",
#   "Where there is no struggle, there is no strength.",
#   "Turn your wounds into wisdom.",
#   "Doing the best at this moment puts you in the best place for the next moment."], link: ["http://www.consciousclicks.org/"], public: true)
# oprah_quotes.user = oprah
# oprah_quotes.save!

ads = MessageSet.new(theme: "Materialism",
  messages: ["How can I live with less?",
    "I don't need material things to be happy",
  "What material things can I live without?"],
  link: ["https://www.becomingminimalist.com/what-if-i-dont/",
    "https://www.honestlymodern.com/how-to-really-buy-less-stuff-we-do-not-need/",
    "https://ha-na.nl/2020/07/do-i-really-need-this-before-u-buy/"])
ads.user = conscious_clicks
ads.save!

# ads = MessageSet.create(theme: "Advertising",
#   messages: ["I am too smart to be brainwashed by ads",
#   "I won’t be tricked into buying things I don’t need",
#   "How are ads trying to affect me today?",
#   "What are algorithms assuming about me?",
#   "When I see an ad, I take a deep breath and ignore it.",
#   "Do I realllly need that thing I want to buy?"])

exams = MessageSet.new(theme: "Deadlines",
  messages: ["Forgive yourself for procrastinating, we all do it!",
    "You know more than you think!",
    "What will make today a win for you?"],
  link: ["https://medium.com/swlh/its-time-to-forgive-your-procrastination-4cadc7bb3c44",
    "https://www.scientificamerican.com/article/you-know-more-than-you-think/",
    "https://www.success.com/5-rules-to-win-today-and-every-day/"])
exams.user = conscious_clicks
exams.save

social = MessageSet.new(theme: "Social Media",
  messages: ["What could you achieve today if you spent less time on your phone?",
    "No one's life is as perfect as their Instagram feed!",
    "I won't compare myself to strangers on the internet"],
  link: ["https://medium.com/personal-growth-lab/15-tips-to-spend-less-time-on-your-phone-cdbdc63a5a72",
    "https://nextwithnita.com/no-ones-life-is-as-perfect-as-their-instagram-feed/",
    "https://www.lifehack.org/318009/25-websites-other-than-social-media-upgrade-your-life"])
social.user = conscious_clicks
social.save

# social = MessageSet.create(theme: "Social Media",
#   messages: ["Spend a few hours without your phone today.",
#     "No one's life is as perfect as it seems on Instagram.",
#     "Resist the instinct to click on Instagram.",
#     "I won't compare myself to strangers on the internet.",
#     "Stop scrolling and enjoy being alive!",
#     "Will checking social media make me happier today?"])

beauty = MessageSet.new(theme: "Beauty Standards",
  messages: ["Love your imperfections!",
    "I will continue loving myself everyday regardless of what society thinks!",
    "Focus on being better looking on the inside not the outside!"],
  link: ["https://onbeing.org/blog/leonard-cohen-champion-of-our-cracked-imperfections/",
    "https://medium.com/@ResilientBella/not-letting-society-choose-control-how-i-live-my-life-f59cc3e5f80d",
    "https://medium.com/swlh/why-you-must-focus-on-being-better-looking-on-the-inside-than-the-outside-310d174e408"])
beauty.user = conscious_clicks
beauty.save

loneliness = MessageSet.new(theme: "Isolation",
  messages: ["Performing random acts of kindness can improve your well-being!",
    "What creative and inspiring acts can you do when feeling lonely?",
    "Who could you reach out to today?"],
  link: ["https://positivepsychology.com/random-acts-kindness/",
    "https://www.keepinspiring.me/25-creative-and-surprising-things-to-do-when-you-feel-lonely/",
    "https://happiful.com/how-to-reach-out-if-youre-feeling-lonely/"])
loneliness.user = conscious_clicks
loneliness.save

climate = MessageSet.new(theme: "Climate change",
  messages: ["If you can, how about walking instead of driving today?",
    "What could you do today to reduce your plastic footprint?",
    "Every little thing we can do to protect the earth is worth it."],
  link: ["https://greatist.com/happiness/ways-help-environment",
    "http://www.energysavingsecrets.co.uk/walking.html",
    "https://www.wwf.org.uk/updates/ten-tips-reduce-your-plastic-footprint"])
climate.user = conscious_clicks
climate.save

gender = MessageSet.new(theme: "Gender Roles",
  messages: ["What gender stereotypes do I conform to?",
    "What kinds of non-binary genders exist?",
    "The Trevor Project provides guidance and support to young LGBTQ people."],
  link: ["https://www.unicef.org/innovation/stories/breaking-gender-stereotypes",
    "https://www.outlife.org.uk/being-non-binary",
    "https://www.thetrevorproject.org/trvr_support_center/trans-gender-identity/"])
gender.user = conscious_clicks
gender.save

fake = MessageSet.new(theme: "Fake news",
  messages: ["What is the right way to fight fake news?",
    "What can you do to stop fake news and misinformation?",
    "Resolve to reading news articles beyond the headline!"],
  link: ["https://www.nytimes.com/2020/03/24/opinion/fake-news-social-media.html",
    "https://www.bbc.co.uk/news/av/stories-46199347",
    "https://medium.com/@emilyrosethorne6/we-need-to-start-reading-past-the-headline-but-not-for-the-reasons-you-think-fc64ec53f77b"])
fake.user = conscious_clicks
fake.save

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
