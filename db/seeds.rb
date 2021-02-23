Goal.destroy_all
Bookmark.destroy_all
UserMood.destroy_all
UserMessageSet.destroy_all
MessageSet.destroy_all
Message.destroy_all
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

just_do_it = MessageSet.create!(theme: 'Motivate Yourself', public: true, user: shia)
Message.create!(content: 'Just do it', message_set: just_do_it)
Message.create!(content: "Don't let your dreams be dreams", message_set: just_do_it)
Message.create!(content: 'Make your dreams come true', message_set: just_do_it)
Message.create!(content: 'Nothing is impossible', message_set: just_do_it)
Message.create!(content: 'Yes you can!', message_set: just_do_it)
Message.create!(content: "If you're tired of starting over, stop giving up", message_set: just_do_it)

oprah_quotes = MessageSet.create!(theme: 'Words of Wisdom', public: true, user: oprah)
Message.create!(content: "Surround yourself only with people who are going to take you higher.",
                message_set: oprah_quotes)
Message.create!(content: "Surround yourself only with people who are going to take you higher.",
                message_set: oprah_quotes)
Message.create!(content: "You get in life what you have the courage to ask for.",
                message_set: oprah_quotes)
Message.create!(content: "The more you praise and celebrate your life, the more there is in life to celebrate.",
                message_set: oprah_quotes)
Message.create!(content: "Breathe. Let go. And remind yourself that this very moment is the only one you know you have for sure.",
                message_set: oprah_quotes)
Message.create!(content: "Forgiveness is giving up the hope that the past could have been any different.",
                message_set: oprah_quotes)
Message.create!(content: "Where there is no struggle, there is no strength.",
                message_set: oprah_quotes)
Message.create!(content: "Turn your wounds into wisdom.", message_set: oprah_quotes)
Message.create!(content: "Doing the best at this moment puts you in the best place for the next moment.",
                message_set: oprah_quotes)

questions = MessageSet.create!(theme: 'Daily Reflections', public: true, user: neil)
Message.create!(content: "What are you grateful for?", message_set: questions)
Message.create!(content: "What gets you excited about life today?", message_set: questions)
Message.create!(content: "What would you do differently if you knew nobody would judge you?", message_set: questions)
Message.create!(content: "What are you taking for granted?", message_set: questions)
Message.create!(content: "What matters most in your life?", message_set: questions)
Message.create!(content: "If not now, then when?", message_set: questions)
Message.create!(content: "Are you taking care of yourself today?", message_set: questions)

# message sets by Conscious Clicks

positive = MessageSet.create!(theme: 'Positive Affirmations', public: true, user: conscious_clicks)
Message.create!(content: "I deserve wonderful things", message_set: positive)
Message.create!(content: "I am an amazing person!", message_set: positive)
Message.create!(content: "All I can do is try my best", message_set: positive)
Message.create!(content: "I choose what I become", message_set: positive)
Message.create!(content: "I’ll let go of things I can’t control", message_set: positive)

advertising = MessageSet.create!(theme: "Advertising", public: true, user: conscious_clicks)
Message.create!(content: "I'm too smart to be brainwashed by ads", message_set: advertising)
Message.create!(content: "I won't be tricked into buying things I don't need", message_set: advertising)
Message.create!(content: "When you see an ad, take a deep breath and ignore it.", message_set: advertising)
Message.create!(content: "How are ads trying to affect me today?", message_set: advertising)
Message.create!(content: "Silly algorithms, you can't mess with me!", message_set: advertising)

materialism = MessageSet.create!(theme: 'Materialism', public: true, user: conscious_clicks)
Message.create!(content: "How can I live with less?",
                link: 'https://www.becomingminimalist.com/what-if-i-dont/',
                message_set: materialism)
Message.create!(content: "I don't need material things to be happy",
                link: 'https://www.honestlymodern.com/how-to-really-buy-less-stuff-we-do-not-need/',
                message_set: materialism)
Message.create!(content: "Do you really need that thing you want to buy?",
                link: 'https://ha-na.nl/2020/07/do-i-really-need-this-before-u-buy/',
                message_set: materialism)
Message.create!(content: "Having fewer things is freeing", message_set: materialism)

climate = MessageSet.create!(theme: 'Climate Change', public: true, user: conscious_clicks)
Message.create!(content: "If you can, how about walking instead of driving today?",
                link: 'http://www.energysavingsecrets.co.uk/walking.html',
                message_set: climate)
Message.create!(content: "What could you do today to reduce your plastic footprint?",
                link: 'https://www.wwf.org.uk/updates/ten-tips-reduce-your-plastic-footprint',
                message_set: climate)
Message.create!(content: "Every little thing we can do to protect the earth is worth it.",
                link: 'https://greatist.com/happiness/ways-help-environment',
                message_set: climate)
Message.create!(content: "If it's wrapped in plastic, I'll think twice about buying it",
                message_set: climate)

social = MessageSet.create!(theme: 'Social Media', public: true, user: conscious_clicks)
Message.create!(content: "I won't compare myself to strangers on the internet.", message_set: social)
Message.create!(content: "No one's life is as perfect as their Instagram feed!",
                link: 'https://nextwithnita.com/no-ones-life-is-as-perfect-as-their-instagram-feed/',
                message_set: social)
Message.create!(content: "Resist the instinct to click on Instagram!", message_set: social)
Message.create!(content: "What does social media really add to my life?", message_set: social)
Message.create!(content: "What could you achieve today if you spent less time on your phone?",
                link: 'https://medium.com/personal-growth-lab/15-tips-to-spend-less-time-on-your-phone-cdbdc63a5a72',
                message_set: social)
Message.create!(content: "Instead of mindlessly scrolling, learn something new!",
                link: 'https://www.lifehack.org/318009/25-websites-other-than-social-media-upgrade-your-life',
                message_set: social)

beauty = MessageSet.create!(theme: 'Beauty Standards', public: true, user: conscious_clicks)
Message.create!(content: "Embrace your imperfections!",
                link: 'https://onbeing.org/blog/leonard-cohen-champion-of-our-cracked-imperfections/',
                message_set: beauty)
Message.create!(content: "Keep in mind how much make-up and photoshop go into the images you see",
                message_set: beauty)
Message.create!(content: "I will continue loving myself everyday regardless of what society thinks!",
                link: 'https://medium.com/@ResilientBella/not-letting-society-choose-control-how-i-live-my-life-f59cc3e5f80d',
                message_set: beauty)
Message.create!(content: "I won't stress about meeting unrealistic beauty standards", message_set: beauty)
Message.create!(content: "Inner beauty is all that matters",
                link: 'https://medium.com/swlh/why-you-must-focus-on-being-better-looking-on-the-inside-than-the-outside-310d174e408',
                message_set: beauty)
Message.create!(content: "I will not let society write my definition of beauty.", message_set: beauty)
Message.create!(content: "I'm beautiful as I am", message_set: beauty)

exams = MessageSet.create!(theme: 'Deadlines', public: true, user: conscious_clicks)
Message.create!(content: "Forgive yourself for procrastinating, we all do it!",
                link: 'https://medium.com/swlh/its-time-to-forgive-your-procrastination-4cadc7bb3c44',
                message_set: exams)
Message.create!(content: "You know more than you think!",
                link: 'https://www.scientificamerican.com/article/you-know-more-than-you-think/',
                message_set: exams)
Message.create!(content: "What will make today a win for you?",
                link: 'https://www.success.com/5-rules-to-win-today-and-every-day/',
                message_set: exams)
Message.create!(content: "All the hard work will be worth it!", message_set: exams)
Message.create!(content: "Focus now and you'll thank yourself later!", message_set: exams)

loneliness = MessageSet.create!(theme: 'Isolation', public: true, user: conscious_clicks)
Message.create!(content: "Performing a random act of kindness will uplift you today.",
                link: 'https://positivepsychology.com/random-acts-kindness/',
                message_set: loneliness)
Message.create!(content: "If you feel lonely, focus on something creative.",
                link: 'https://www.keepinspiring.me/25-creative-and-surprising-things-to-do-when-you-feel-lonely/',
                message_set: loneliness)
Message.create!(content: "Reach out to someone you care about!",
                link: 'https://happiful.com/how-to-reach-out-if-youre-feeling-lonely/',
                message_set: loneliness)
Message.create!(content: "Alonetime is important for us to truly know ourselves.",
                message_set: loneliness)
Message.create!(content: "Enjoying alonetime is essential. You're always with yourself, after all.",
                message_set: loneliness)

gender = MessageSet.create!(theme: 'Gender Roles', public: true, user: conscious_clicks)
Message.create!(content: "What gender stereotypes do I conform to?",
                link: 'https://www.unicef.org/innovation/stories/breaking-gender-stereotypes',
                message_set: gender)
Message.create!(content: "What sexist language do I mindlessly use?", message_set: gender)
Message.create!(content: "I don't have to act my gender", message_set: gender)
Message.create!(content: "How does the gender binary affect me?",
                link: 'https://www.outlife.org.uk/being-non-binary',
                message_set: gender)
Message.create!(content: "It's perfectly normal to break gender norms",
                link: 'https://www.thetrevorproject.org/trvr_support_center/trans-gender-identity/',
                message_set: gender)
Message.create!(content: "Showing emotions is healthy for everyone.", message_set: gender)
Message.create!(content: "Society's expectations can't limit who I am", message_set: gender)
Message.create!(content: "Recognize when you're quick to judge others", message_set: gender)

fake = MessageSet.create!(theme: 'Fake news', public: true, user: conscious_clicks)
Message.create!(content: "Am I being sure to resist fake news?",
                link: 'https://www.nytimes.com/2020/03/24/opinion/fake-news-social-media.html',
                message_set: fake)
Message.create!(content: "Make sure you trust the sources of your news today.",
                link: 'https://www.bbc.co.uk/news/av/stories-46199347',
                message_set: fake)
Message.create!(content: "Read a news article beyond the headline!",
                link: 'https://medium.com/@emilyrosethorne6/we-need-to-start-reading-past-the-headline-but-not-for-the-reasons-you-think-fc64ec53f77b',
                message_set: fake)
Message.create!(content: "I know a conspiracy theory when I see one", message_set: fake)
Message.create!(content: "Question every news source!", message_set: fake)
Message.create!(content: "Educate youself about what happened in the world today.", message_set: fake)

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
