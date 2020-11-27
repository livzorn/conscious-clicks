UserMessageSet.destroy_all
MessageSet.destroy_all


# positive = MessageSet.create(theme: "Positive Affirmations",
#   messages: ["I deserve wonderful things",
#   "I am an amazing person!",
#   "All I can do is try my best",
#   "I choose what I become",
#   "I’ll let go of things I can’t control",])

ads = MessageSet.create(theme: "Advertising",
  messages: ["I am too smart to be brainwashed by ads",
  "I won’t be tricked into buying things I don’t need",
  "How are ads trying to affect me today?",
  "What are algorithms assuming about me?",
  "When I see an ad, I take a deep breath and ignore it.",
  "Do I realllly need that think I want to buy?"])

exams = MessageSet.create(theme: "Exams/Deadlines",
  messages: ["A goal is a dream with a deadline.",
    "Never do tomorrow what you can do today.",
    "Success consists of going from failure to failure without loss of enthusiasm.",
    "What will make today a win for you?",
    "Trust yourself, you know more than you think you do.",
    "Without hard work, nothing grows but weeds.",
    "Either you run the day or the day runs you.",])

social = MessageSet.create(theme: "Social Media",
  messages: ["Spend a few hours without your phone today.",
    "No one's life is as perfect as it seems on Instagram.",
    "Resist the instinct to click on Instagram.",
    "I won't compare myself to strangers on the internet.",
    "Stop scrolling and enjoy being alive!",
    "Will checking social media make me happier today?"])

beauty = MessageSet.create(theme: "Beauty Standards",
  messages: ["My imperfections are what make me perfect.",
    "I'm beautiful as I am",
    "I am at peace with who I am",
    "There’s no one I’d rather be than me",
    "I won't let society choose my definition of beauty."])

loneliness = MessageSet.create(theme: "Loneliness/isolation",
  messages: ["Check in with someone you care about.",
    "blah blah blah Loneliness/isolation 2.",
    "blah blah blah Loneliness/isolation 3.",
    "blah blah blah Loneliness/isolation 4.",
    "blah blah blah Loneliness/isolation 5.",
    "blah blah blah Loneliness/isolation 6.",
    "blah blah blah Loneliness/isolation 7."])

climate = MessageSet.create(theme: "Climate change",
  messages: ["What's one small thing I can do to help the environment?",
    "If it's wrapped in plastic, I'll think twice about buying it.",
    "If I can, I'll walk instead of driving.",
    "How can I produce less trash today?"])

gender = MessageSet.create(theme: "Traditional gender roles",
  messages: ["blah blah blah Traditional gender roles 1.",
    "blah blah blah Traditional gender roles 2.",
    "blah blah blah Traditional gender roles 3.",
    "blah blah blah Traditional gender roles 4.",
    "blah blah blah Traditional gender roles 5.",
    "blah blah blah Traditional gender roles 6.",
    "blah blah blah Traditional gender roles 7.",])

fake = MessageSet.create(theme: "Fake news",
  messages: ["blah blah blah Fake news 1.",
    "blah blah blah Fake news 2.",
    "blah blah blah Fake news 3.",
    "blah blah blah Fake news 4.",
    "blah blah blah Fake news 5.",
    "blah blah blah Fake news 6.",
    "blah blah blah Fake news 7.",])

time = MessageSet.create(theme: "Time management",
  messages: ["blah blah blah Time management 1.",
    "blah blah blah Time management 2.",
    "blah blah blah Time management 3.",
    "blah blah blah Time management 4.",
    "blah blah blah Time management 5.",
    "blah blah blah Time management 6.",
    "blah blah blah Time management 7.",])

olivia = User.create(name: "Olivia", email: "olivia@zorn.com", password: "lewagon")

UserMessageSet.create(user: User.first, message_set: MessageSet.first)
UserMessageSet.create(user: User.last, message_set: MessageSet.last)

Mood.create(emoji: "🤩", name: "happy", happiness_level: 5)
Mood.create(emoji: "😃", name: "okay", happiness_level: 4)
Mood.create(emoji: "😐", name: "average", happiness_level: 3)
Mood.create(emoji: "🥺", name: "down", happiness_level: 2)
Mood.create(emoji: "😪", name: "sad", happiness_level: 1)
