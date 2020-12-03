Goal.destroy_all
Bookmark.destroy_all
UserMood.destroy_all
UserMessageSet.destroy_all
MessageSet.destroy_all
User.destroy_all
Mood.destroy_all

# users

olivia = User.create!(name: "Olivia", email: "olivia@zorn.com", password: "lewagon")
puts 'Created user Olivia'

conscious_clicks = User.create(name: "Conscious Clicks", email: "admin@consciousclicks.org", password: "lewagon")
puts 'Created user Conscious Clicks'

shia = User.create(name: "Shia LaBeouf", email: "shia@justdoit.com", password: "lewagon")
puts 'Created Shia LaBeouf'

oprah = User.create(name: "Oprah Winfrey", email: "oprah@winfrey.com", password: "lewagon")
puts 'Created Oprah'

neil = User.create(name: "Neil Quigley", email: "neil@gmail.com", password: "lewagon")
puts 'Created Neil'

giorgiana = User.create(name: "Giorgiana Arco-Zinneberg", email: "giorgiana@gmail.com", password: "lewagon")
puts 'Created Giorgiana'

nikola = User.create(name: "Nikola Calic", email: "nikola@gmail.com", password: "lewagon")
puts 'Created Nikola'

# message sets made by other users

just_do_it = MessageSet.new(
  theme: 'Motivate Yourself',
  messages: {
    'Just do it': '',
    "Don't let your dreams be dreams": '',
    'Make your dreams come true': '',
    'Nothing is impossible': '',
    'Yes you can!': '',
    "If you're tired of starting over, stop giving up": ''
  },
  public: true
)
just_do_it.user = shia
just_do_it.save!

oprah_quotes = MessageSet.new(
  theme: 'Words of Wisdom',
  messages: {
    "Surround yourself only with people who are going to take you higher.": '',
    "You get in life what you have the courage to ask for.": '',
    "The more you praise and celebrate your life, the more there is in life to celebrate.": '',
    "Breathe. Let go. And remind yourself that this very moment is the only one you know you have for sure.": '',
    "Forgiveness is giving up the hope that the past could have been any different.": '',
    "Where there is no struggle, there is no strength.": '',
    "Turn your wounds into wisdom.": '',
    "Doing the best at this moment puts you in the best place for the next moment.": ''
  },
  public: true
)
oprah_quotes.user = oprah
oprah_quotes.save!

questions = MessageSet.new(
  theme: 'Daily Reflections',
  messages: {
    "What are you grateful for?": '',
    "What gets you excited about life today?": '',
    "What would you do differently if you knew nobody would judge you?": '',
    "What are you taking for granted?": '',
    "What matters most in your life?": '',
    "If not now, then when?": '',
    "Are you taking care of yourself today?": ''
  },
  public: true
)
questions.user = neil
questions.save!

# message sets by Conscious Clicks

positive = MessageSet.new(
  theme: 'Positive Affirmations',
  messages: {
    "I deserve wonderful things": '',
    "I am an amazing person!": '',
    "All I can do is try my best": '',
    "I choose what I become": '',
    "I’ll let go of things I can’t control": ''
  },
  public: true
)
positive.user = conscious_clicks
positive.save!

advertising = MessageSet.new(
  theme: "Advertising",
  messages: {
    "I'm too smart to be brainwashed by ads": '',
    "I won't be tricked into buying things I don't need": '',
    "When you see an ad, take a deep breath and ignore it.": '',
    "How are ads trying to affect me today?": '',
    "Silly algorithms, you can't mess with me!": ''
  },
  public: true
)
advertising.user = conscious_clicks
advertising.save!

materialism = MessageSet.new(
  theme: 'Materialism',
  messages: {
    "How can I live with less?": 'https://www.becomingminimalist.com/what-if-i-dont/',
    "I don't need material things to be happy": 'https://www.honestlymodern.com/how-to-really-buy-less-stuff-we-do-not-need/',
    "Do you really need that thing you want to buy?": 'https://ha-na.nl/2020/07/do-i-really-need-this-before-u-buy/',
    "Having fewer things is freeing": ''
  },
  public: true
)
materialism.user = conscious_clicks
materialism.save!

climate = MessageSet.new(
  theme: 'Climate Change',
  messages: {
    "If you can, how about walking instead of driving today?": 'http://www.energysavingsecrets.co.uk/walking.html',
    "What could you do today to reduce your plastic footprint?": 'https://www.wwf.org.uk/updates/ten-tips-reduce-your-plastic-footprint',
    "Every little thing we can do to protect the earth is worth it.": 'https://greatist.com/happiness/ways-help-environment',
    "If it's wrapped in plastic, I'll think twice about buying it": ''
  },
  public: true
)
climate.user = conscious_clicks
climate.save!

social = MessageSet.new(
  theme: 'Social Media',
  messages: {
    "I won't compare myself to strangers on the internet.": '',
    "No one's life is as perfect as their Instagram feed!": 'https://nextwithnita.com/no-ones-life-is-as-perfect-as-their-instagram-feed/',
    "Resist the instinct to click on Instagram!": '',
    "What does social media really add to my life?": '',
    "What could you achieve today if you spent less time on your phone?": 'https://medium.com/personal-growth-lab/15-tips-to-spend-less-time-on-your-phone-cdbdc63a5a72',
    "Instead of mindlessly scrolling, learn something new!": 'https://www.lifehack.org/318009/25-websites-other-than-social-media-upgrade-your-life'
  },
  public: true
)
social.user = conscious_clicks
social.save!

beauty = MessageSet.new(
  theme: 'Beauty Standards',
  messages: {
    "Embrace your imperfections!": 'https://onbeing.org/blog/leonard-cohen-champion-of-our-cracked-imperfections/',
    "Keep in mind how much make-up and photoshop go into the images you see": '',
    "I will continue loving myself everyday regardless of what society thinks!": 'https://medium.com/@ResilientBella/not-letting-society-choose-control-how-i-live-my-life-f59cc3e5f80d',
    "I won't stress about meeting unrealistic beauty standards": '',
    "Inner beauty is all that matters": 'https://medium.com/swlh/why-you-must-focus-on-being-better-looking-on-the-inside-than-the-outside-310d174e408',
    "I will not let society write my definition of beauty.": '',
    "I'm beautiful as I am": ''
  },
  public: true
)
beauty.user = conscious_clicks
beauty.save!

exams = MessageSet.new(
  theme: 'Deadlines',
  messages: {
    "Forgive yourself for procrastinating, we all do it!": 'https://medium.com/swlh/its-time-to-forgive-your-procrastination-4cadc7bb3c44',
    "You know more than you think!": 'https://www.scientificamerican.com/article/you-know-more-than-you-think/',
    "What will make today a win for you?": 'https://www.success.com/5-rules-to-win-today-and-every-day/',
    "All the hard work will be worth it!": '',
    "Focus now and you'll thank yourself later!": ''
  },
  public: true
)
exams.user = conscious_clicks
exams.save!

loneliness = MessageSet.new(
  theme: 'Isolation',
  messages: {
    "Performing a random act of kindness will uplift you today.": 'https://positivepsychology.com/random-acts-kindness/',
    "If you feel lonely, focus on something creative.": 'https://www.keepinspiring.me/25-creative-and-surprising-things-to-do-when-you-feel-lonely/',
    "Reach out to someone you care about!": 'https://happiful.com/how-to-reach-out-if-youre-feeling-lonely/',
    "Alonetime is important for us to truly know ourselves.": '',
    "Enjoying alonetime is essential. You're always with yourself, after all.": ''
  },
  public: true
)
loneliness.user = conscious_clicks
loneliness.save!

gender = MessageSet.new(
  theme: 'Gender Roles',
  messages: {
    "What gender stereotypes do I conform to?": 'https://www.unicef.org/innovation/stories/breaking-gender-stereotypes',
    "What sexist language do I mindlessly use?": '',
    "I don't have to act my gender": '',
    "How does the gender binary affect me?": 'https://www.outlife.org.uk/being-non-binary',
    "It's perfectly normal to break gender norms": 'https://www.thetrevorproject.org/trvr_support_center/trans-gender-identity/',
    "Showing emotions is healthy for everyone.": '',
    "Society's expectations can't limit who I am": '',
    "Recognize when you're quick to judge others": ''
  },
  public: true
)
gender.user = conscious_clicks
gender.save!

fake = MessageSet.new(
  theme: 'Fake news',
  messages: {
    "Am I being sure to resist fake news?": 'https://www.nytimes.com/2020/03/24/opinion/fake-news-social-media.html',
    "Make sure you trust the sources of your news today.": 'https://www.bbc.co.uk/news/av/stories-46199347',
    "Read a news articles beyond the headline!": 'https://medium.com/@emilyrosethorne6/we-need-to-start-reading-past-the-headline-but-not-for-the-reasons-you-think-fc64ec53f77b',
    "I know a conspiracy theory when I see one": '',
    "Question every news source!": '',
    "Educate youself about what happened in the world today.": ''
  },
  public: true
)
fake.user = conscious_clicks
fake.save!

puts 'Created Message Sets'

# Giving Olivia some message sets to start out

UserMessageSet.create!(user: olivia, message_set: positive)
UserMessageSet.create!(user: olivia, message_set: advertising)
UserMessageSet.create!(user: olivia, message_set: beauty)
UserMessageSet.create!(user: olivia, message_set: materialism)
UserMessageSet.create!(user: olivia, message_set: social)

puts 'gave Olivia 5 message sets'

ecstatic = Mood.create!(emoji: '🤩', name: 'ecstatic', happiness_level: 6)
happy = Mood.create!(emoji: '😄', name: 'happy', happiness_level: 5)
okay = Mood.create!(emoji: '🙂', name: 'okay', happiness_level: 4)
average = Mood.create!(emoji: '😐', name: 'average', happiness_level: 3)
down = Mood.create!(emoji: '😔', name: 'down', happiness_level: 2)
sad = Mood.create!(emoji: '😣', name: 'sad', happiness_level: 1)

puts 'Created 6 moods'

UserMood.create!(mood_id: okay.id, user: olivia, date: (Date.today - 6))
UserMood.create!(mood_id: average.id, user: olivia, date: (Date.today - 5))
UserMood.create!(mood_id: sad.id, user: olivia, date: (Date.today - 4))
UserMood.create!(mood_id: down.id, user: olivia, date: (Date.today - 3))
UserMood.create!(mood_id: ecstatic.id, user: olivia, date: (Date.today - 2))
UserMood.create!(mood_id: okay.id, user: olivia, date: (Date.today - 1))

puts 'gave Olivia 6 mood check-ins'

# Giving Olivia 3 bookmarks

google = Bookmark.new(link: 'https://www.google.com/', name: 'Google')
google.user = olivia
google.save!

wagon = Bookmark.new(link: 'https://www.lewagon.com/', name: 'Le Wagon')
wagon.user = olivia
wagon.save!

ted = Bookmark.new(link: 'https://www.ted.com/', name: 'Ted')
ted.user = olivia
ted.save!

puts 'Gave Olivia 3 bookmarks'
