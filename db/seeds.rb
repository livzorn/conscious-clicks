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
  message_1: 'Just do it',
  message_2: "Don't let your dreams be dreams",
  message_3: 'Make your dreams come true',
  message_4: 'Nothing is impossible',
  message_5: 'Yes you can!',
  message_6: "If you're tired of starting over, stop giving up",
  public: true
)
just_do_it.user = shia
just_do_it.save!

oprah_quotes = MessageSet.new(
  theme: 'Words of Wisdom',
  message_1: "Surround yourself only with people who are going to take you higher.",
  message_2: "You get in life what you have the courage to ask for.",
  message_3: "The more you praise and celebrate your life, the more there is in life to celebrate.",
  message_4: "Breathe. Let go. And remind yourself that this very moment is the only one you know you have for sure.",
  message_5: "Forgiveness is giving up the hope that the past could have been any different.",
  message_6: "Where there is no struggle, there is no strength.",
  message_7: "Turn your wounds into wisdom.",
  message_8: "Doing the best at this moment puts you in the best place for the next moment.",
  public: true
)
oprah_quotes.user = oprah
oprah_quotes.save!

questions = MessageSet.new(
  theme: 'Daily Reflections',
  message_1: "What are you grateful for?",
  message_2: "What gets you excited about life today?",
  message_3: "What would you do differently if you knew nobody would judge you?",
  message_4: "What are you taking for granted?",
  message_5: "What matters most in your life?",
  message_6: "If not now, then when?",
  message_7: "Are you taking care of yourself today?",
  public: true
)
questions.user = neil
questions.save!

# message sets by Conscious Clicks

positive = MessageSet.new(
  theme: 'Positive Affirmations',
  message_1: "I deserve wonderful things",
  message_2: "I am an amazing person!",
  message_3: "All I can do is try my best",
  message_4: "I choose what I become",
  message_5: "I’ll let go of things I can’t control",
  public: true
)
positive.user = conscious_clicks
positive.save!

advertising = MessageSet.new(
  theme: "Advertising",
  message_1: "I'm too smart to be brainwashed by ads",
  message_2: "I won't be tricked into buying things I don't need",
  message_3: "When you see an ad, take a deep breath and ignore it.",
  message_4: "How are ads trying to affect me today?",
  message_5: "Silly algorithms, you can't mess with me!",
  public: true
)
advertising.user = conscious_clicks
advertising.save!

materialism = MessageSet.new(
  theme: 'Materialism',
  message_1: "How can I live with less?",
  link_1: 'https://www.becomingminimalist.com/what-if-i-dont/',
  message_2: "I don't need material things to be happy",
  link_2: 'https://www.honestlymodern.com/how-to-really-buy-less-stuff-we-do-not-need/',
  message_3: "Do you really need that thing you want to buy?",
  link_3: 'https://ha-na.nl/2020/07/do-i-really-need-this-before-u-buy/',
  message_4: "Having fewer things is freeing",
  public: true
)
materialism.user = conscious_clicks
materialism.save!

climate = MessageSet.new(
  theme: 'Climate Change',
  message_1: "If you can, how about walking instead of driving today?",
  link_1: 'http://www.energysavingsecrets.co.uk/walking.html',
  message_2: "What could you do today to reduce your plastic footprint?",
  link_2: 'https://www.wwf.org.uk/updates/ten-tips-reduce-your-plastic-footprint',
  message_3: "Every little thing we can do to protect the earth is worth it.",
  link_3: 'https://greatist.com/happiness/ways-help-environment',
  message_4: "If it's wrapped in plastic, I'll think twice about buying it",
  public: true
)
climate.user = conscious_clicks
climate.save!

social = MessageSet.new(
  theme: 'Social Media',
  message_1: "I won't compare myself to strangers on the internet.",
  message_2: "No one's life is as perfect as their Instagram feed!",
  link_2: 'https://nextwithnita.com/no-ones-life-is-as-perfect-as-their-instagram-feed/',
  message_3: "Resist the instinct to click on Instagram!",
  message_4: "What does social media really add to my life?",
  message_5: "What could you achieve today if you spent less time on your phone?",
  link_5: 'https://medium.com/personal-growth-lab/15-tips-to-spend-less-time-on-your-phone-cdbdc63a5a72',
  message_6: "Instead of mindlessly scrolling, learn something new!",
  message_7: 'https://www.lifehack.org/318009/25-websites-other-than-social-media-upgrade-your-life',
  public: true
)
social.user = conscious_clicks
social.save!

beauty = MessageSet.new(
  theme: 'Beauty Standards',
  message_1: "Embrace your imperfections!",
  link_1: 'https://onbeing.org/blog/leonard-cohen-champion-of-our-cracked-imperfections/',
  message_2: "Keep in mind how much make-up and photoshop go into the images you see",
  message_3: "I will continue loving myself everyday regardless of what society thinks!",
  link_3: 'https://medium.com/@ResilientBella/not-letting-society-choose-control-how-i-live-my-life-f59cc3e5f80d',
  message_4: "I won't stress about meeting unrealistic beauty standards",
  message_5: "Inner beauty is all that matters",
  link_5: 'https://medium.com/swlh/why-you-must-focus-on-being-better-looking-on-the-inside-than-the-outside-310d174e408',
  message_6: "I will not let society write my definition of beauty.",
  message_7: "I'm beautiful as I am",
  public: true
)
beauty.user = conscious_clicks
beauty.save!

exams = MessageSet.new(
  theme: 'Deadlines',
  message_1: "Forgive yourself for procrastinating, we all do it!",
  link_1: 'https://medium.com/swlh/its-time-to-forgive-your-procrastination-4cadc7bb3c44',
  message_2: "You know more than you think!",
  link_2: 'https://www.scientificamerican.com/article/you-know-more-than-you-think/',
  message_3: "What will make today a win for you?",
  link_3: 'https://www.success.com/5-rules-to-win-today-and-every-day/',
  message_4: "All the hard work will be worth it!",
  message_5: "Focus now and you'll thank yourself later!",
  public: true
)
exams.user = conscious_clicks
exams.save!

loneliness = MessageSet.new(
  theme: 'Isolation',
  message_1: "Performing a random act of kindness will uplift you today.",
  link_1: 'https://positivepsychology.com/random-acts-kindness/',
  message_2: "If you feel lonely, focus on something creative.",
  link_2: 'https://www.keepinspiring.me/25-creative-and-surprising-things-to-do-when-you-feel-lonely/',
  message_3: "Reach out to someone you care about!",
  link_3: 'https://happiful.com/how-to-reach-out-if-youre-feeling-lonely/',
  message_4: "Alonetime is important for us to truly know ourselves.",
  message_5: "Enjoying alonetime is essential. You're always with yourself, after all.",
  public: true
)
loneliness.user = conscious_clicks
loneliness.save!

gender = MessageSet.new(
  theme: 'Gender Roles',
  message_1: "What gender stereotypes do I conform to?",
  link_1: 'https://www.unicef.org/innovation/stories/breaking-gender-stereotypes',
  message_2: "What sexist language do I mindlessly use?",
  message_3: "I don't have to act my gender",
  message_4: "How does the gender binary affect me?",
  link_4: 'https://www.outlife.org.uk/being-non-binary',
  message_5: "It's perfectly normal to break gender norms",
  link_5: 'https://www.thetrevorproject.org/trvr_support_center/trans-gender-identity/',
  message_6: "Showing emotions is healthy for everyone.",
  message_7: "Society's expectations can't limit who I am",
  message_8: "Recognize when you're quick to judge others",
  public: true
)
gender.user = conscious_clicks
gender.save!

fake = MessageSet.new(
  theme: 'Fake news',
  message_1: "Am I being sure to resist fake news?",
  link_1: 'https://www.nytimes.com/2020/03/24/opinion/fake-news-social-media.html',
  message_2: "Make sure you trust the sources of your news today.",
  link_2: 'https://www.bbc.co.uk/news/av/stories-46199347',
  message_3: "Read a news article beyond the headline!",
  link_3: 'https://medium.com/@emilyrosethorne6/we-need-to-start-reading-past-the-headline-but-not-for-the-reasons-you-think-fc64ec53f77b',
  message_4: "I know a conspiracy theory when I see one",
  message_5: "Question every news source!",
  message_6: "Educate youself about what happened in the world today.",
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
