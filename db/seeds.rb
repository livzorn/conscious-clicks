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

just_do_it = MessageSet.new(theme: 'Motivate Yourself', public: true)
just_do_it1 = Message.new(content: 'Just do it')
just_do_it1.message_set = just_do_it
just_do_it2 = Message.new(content: "Don't let your dreams be dreams")
just_do_it2.message_set = just_do_it
just_do_it3 = Message.new(content: 'Make your dreams come true')
just_do_it3.message_set = just_do_it
just_do_it4 = Message.new(content: 'Nothing is impossible')
just_do_it4.message_set = just_do_it
just_do_it5 = Message.new(content: 'Yes you can!')
just_do_it5.message_set = just_do_it
just_do_it6 = Message.new(content: "If you're tired of starting over, stop giving up")
just_do_it6.message_set = just_do_it
just_do_it.user = shia
just_do_it.save!

oprah_quotes = MessageSet.new(theme: 'Words of Wisdom', public: true)
oprah_quote1 = Message.new(content: "Surround yourself only with people who are going to take you higher.")
oprah_quote1.message_set = oprah_quotes
oprah_quote2 = Message.new(content: "Surround yourself only with people who are going to take you higher.")
oprah_quote2.message_set = oprah_quotes
oprah_quote3 = Message.new(content: "You get in life what you have the courage to ask for.")
oprah_quote3.message_set = oprah_quotes
oprah_quote4 = Message.new(content: "The more you praise and celebrate your life, the more there is in life to celebrate.")
oprah_quote4.message_set = oprah_quotes
oprah_quote5 = Message.new(content: "Breathe. Let go. And remind yourself that this very moment is the only one you know you have for sure.")
oprah_quote5.message_set = oprah_quotes
oprah_quote6 = Message.new(content: "Forgiveness is giving up the hope that the past could have been any different.")
oprah_quote6.message_set = oprah_quotes
oprah_quote7 = Message.new(content: "Where there is no struggle, there is no strength.")
oprah_quote7.message_set = oprah_quotes
oprah_quote8 = Message.new(content: "Turn your wounds into wisdom.")
oprah_quote8.message_set = oprah_quotes
oprah_quote9 = Message.new(content: "Doing the best at this moment puts you in the best place for the next moment.")
oprah_quote9.message_set = oprah_quotes
oprah_quotes.user = oprah
oprah_quotes.save!

questions = MessageSet.new(theme: 'Daily Reflections', public: true)
question1 = Message.new(content: "What are you grateful for?")
question1.message_set = questions
question2 = Message.new(content: "What gets you excited about life today?")
question2.message_set = questions
question3 = Message.new(content: "What would you do differently if you knew nobody would judge you?")
question3.message_set = questions
question4 = Message.new(content: "What are you taking for granted?")
question4.message_set = questions
question5 = Message.new(content: "What matters most in your life?")
question5.message_set = questions
question6 = Message.new(content: "If not now, then when?")
question6.message_set = questions
question7 = Message.new(content: "Are you taking care of yourself today?")
question7.message_set = questions
questions.user = neil
questions.save!

# message sets by Conscious Clicks

positive = MessageSet.new(theme: 'Positive Affirmations', public: true)
positive1 = Message.new(content: "I deserve wonderful things")
positive1.message_set = positive
positive2 = Message.new(content: "I am an amazing person!")
positive2.message_set = positive
positive3 = Message.new(content: "All I can do is try my best")
positive3.message_set = positive
positive4 = Message.new(content: "I choose what I become")
positive4.message_set = positive
positive5 = Message.new(content: "I’ll let go of things I can’t control")
positive5.message_set = positive
positive.user = conscious_clicks
positive.save!

advertising = MessageSet.new(theme: "Advertising", public: true)
advertising1 = Message.new(content: "I'm too smart to be brainwashed by ads")
advertising1.message_Set = advertising
advertising2 = Message.new(content: "I won't be tricked into buying things I don't need")
advertising2.message_Set = advertising
advertising3 = Message.new(content: "When you see an ad, take a deep breath and ignore it.")
advertising3.message_Set = advertising
advertising4 = Message.new(content: "How are ads trying to affect me today?")
advertising4.message_Set = advertising
advertising5 = Message.new(content: "Silly algorithms, you can't mess with me!")
advertising5.message_Set = advertising
advertising.user = conscious_clicks
advertising.save!

materialism = MessageSet.new(theme: 'Materialism', public: true)
materialism1 = Message.new(content: "How can I live with less?", link: 'https://www.becomingminimalist.com/what-if-i-dont/')
materialism1.message_set = materialism
materialism2 = Message.new(content: "I don't need material things to be happy", link: 'https://www.honestlymodern.com/how-to-really-buy-less-stuff-we-do-not-need/')
materialism2.message_set = materialism
materialism3 = Message.new(content: "Do you really need that thing you want to buy?", link: 'https://ha-na.nl/2020/07/do-i-really-need-this-before-u-buy/')
materialism3.message_set = materialism
materialism4 = Message.new(content: "Having fewer things is freeing")
materialism4.message_set = materialism
materialism.user = conscious_clicks
materialism.save!

climate = MessageSet.new(theme: 'Climate Change', public: true)
climate1 = Message.new(content: "If you can, how about walking instead of driving today?", link: 'http://www.energysavingsecrets.co.uk/walking.html')
climate1.message_set = climate
climate2 = Message.new(content: "What could you do today to reduce your plastic footprint?", link: 'https://www.wwf.org.uk/updates/ten-tips-reduce-your-plastic-footprint')
climate2.message_set = climate
climate3 = Message.new(content: "Every little thing we can do to protect the earth is worth it.", link: 'https://greatist.com/happiness/ways-help-environment')
climate3.message_set = climate
climate4 = Message.new(content: "If it's wrapped in plastic, I'll think twice about buying it")
climate4.message_set = climate
climate.user = conscious_clicks
climate.save!

social = MessageSet.new(theme: 'Social Media', public: true)
social1 = Message.new(content: "I won't compare myself to strangers on the internet.")
social1.message_set = social
social2 = Message.new(content: "No one's life is as perfect as their Instagram feed!", link: 'https://nextwithnita.com/no-ones-life-is-as-perfect-as-their-instagram-feed/')
social2.message_set = social
social3 = Message.new(content: "Resist the instinct to click on Instagram!")
social3.message_set = social
social4 = Message.new(content: "What does social media really add to my life?")
social4.message_set = social
social5 = Message.new(content: "What could you achieve today if you spent less time on your phone?", link: 'https://medium.com/personal-growth-lab/15-tips-to-spend-less-time-on-your-phone-cdbdc63a5a72')
social5.message_set = social
social6 = Message.new(content: "Instead of mindlessly scrolling, learn something new!", link: 'https://www.lifehack.org/318009/25-websites-other-than-social-media-upgrade-your-life')
social6.message_set = social
social.user = conscious_clicks
social.save!

beauty = MessageSet.new(theme: 'Beauty Standards', public: true)
beauty1 = Message.new(content: "Embrace your imperfections!", link: 'https://onbeing.org/blog/leonard-cohen-champion-of-our-cracked-imperfections/')
beauty1.message_set = beauty
beauty2 = Message.new(content: "Keep in mind how much make-up and photoshop go into the images you see")
beauty2.message_set = beauty
beauty3 = Message.new(content: "I will continue loving myself everyday regardless of what society thinks!", link: 'https://medium.com/@ResilientBella/not-letting-society-choose-control-how-i-live-my-life-f59cc3e5f80d')
beauty3.message_set = beauty
beauty4 = Message.new(content: "I won't stress about meeting unrealistic beauty standards")
beauty4.message_set = beauty
beauty5 = Message.new(content: "Inner beauty is all that matters", link: 'https://medium.com/swlh/why-you-must-focus-on-being-better-looking-on-the-inside-than-the-outside-310d174e408')
beauty5.message_set = beauty
beauty6 = Message.new(content: "I will not let society write my definition of beauty.")
beauty6.message_set = beauty
beauty7 = Message.new(content: "I'm beautiful as I am")
beauty7.message_set = beauty
beauty.user = conscious_clicks
beauty.save!

exams = MessageSet.new(theme: 'Deadlines', public: true)
exam1 = Message.new(content: "Forgive yourself for procrastinating, we all do it!", link: 'https://medium.com/swlh/its-time-to-forgive-your-procrastination-4cadc7bb3c44')
exam1.message_set = exams
exam2 = Message.new(content: "You know more than you think!", link: 'https://www.scientificamerican.com/article/you-know-more-than-you-think/')
exam2.message_set = exams
exam3 = Message.new(content: "What will make today a win for you?", link: 'https://www.success.com/5-rules-to-win-today-and-every-day/')
exam3.message_set = exams
exam4 = Message.new(content: "All the hard work will be worth it!")
exam4.message_set = exams
exam5 = Message.new(content: "Focus now and you'll thank yourself later!")
exam5.message_set = exams
exams.user = conscious_clicks
exams.save!

loneliness = MessageSet.new(theme: 'Isolation', public: true)
lonely1 = Message.new(content: "Performing a random act of kindness will uplift you today.", link: 'https://positivepsychology.com/random-acts-kindness/')
lonely1.message_set = loneliness
lonely2 = Message.new(content: "If you feel lonely, focus on something creative.", link: 'https://www.keepinspiring.me/25-creative-and-surprising-things-to-do-when-you-feel-lonely/')
lonely2.message_set = loneliness
lonely3 = Message.new(content: "Reach out to someone you care about!", link: 'https://happiful.com/how-to-reach-out-if-youre-feeling-lonely/')
lonely3.message_set = loneliness
lonely4 = Message.new(content: "Alonetime is important for us to truly know ourselves.")
lonely4.message_set = loneliness
lonely5 = Message.new(content: "Enjoying alonetime is essential. You're always with yourself, after all.")
lonely5.message_set = loneliness
loneliness.user = conscious_clicks
loneliness.save!

# gender = MessageSet.new(theme: 'Gender Roles', public: true)
# gender1 = Message.new(content: "What gender stereotypes do I conform to?", link: 'https://www.unicef.org/innovation/stories/breaking-gender-stereotypes')
# gender1.message_set = gender
# gender2 = Message.new(content: "What sexist language do I mindlessly use?")
# gender2.message_set = gender
# gender3 = Message.new(content: "I don't have to act my gender")
# gender3.message_set = gender
# gender4 = Message.new(content: "How does the gender binary affect me?", link: 'https://www.outlife.org.uk/being-non-binary')
# gender4.message_set = gender
# gender5 = Message.new(content: "It's perfectly normal to break gender norms", link: 'https://www.thetrevorproject.org/trvr_support_center/trans-gender-identity/')
# gender5.message_set = gender
# gender6 = Message.new(content: "Showing emotions is healthy for everyone.")
# gender6.message_set = gender
# gender7 = Message.new(content: "Society's expectations can't limit who I am")
# gender7.message_set = gender
# gender8 = Message.new(content: "Recognize when you're quick to judge others")
# gender8.message_set = gender
# gender.user = conscious_clicks
# gender.save!

fake = MessageSet.new(theme: 'Fake news', public: true)
fake1 = Message.new(content: "Am I being sure to resist fake news?", link: 'https://www.nytimes.com/2020/03/24/opinion/fake-news-social-media.html')
fake1.message_set = fake
fake2 = Message.new(content: "Make sure you trust the sources of your news today.", link: 'https://www.bbc.co.uk/news/av/stories-46199347')
fake2.message_set = fake
fake3 = Message.new(content: "Read a news article beyond the headline!", link: 'https://medium.com/@emilyrosethorne6/we-need-to-start-reading-past-the-headline-but-not-for-the-reasons-you-think-fc64ec53f77b')
fake3.message_set = fake
fake4 = Message.new(content: "I know a conspiracy theory when I see one")
fake4.message_set = fake
fake5 = Message.new(content: "Question every news source!")
fake5.message_set = fake
fake6 = Message.new(content: "Educate youself about what happened in the world today.")
fake6.message_set = fake
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
