UserMessageSet.destroy_all
MessageSet.destroy_all


# positive = MessageSet.create(theme: "Positive Affirmations",
#   messages: ["I deserve wonderful things",
#   "I am at peace with who I am",
#   "I am an amazing person!",
#   "All I can do is try my best",
#   "There’s no one I’d rather be than me",
#   "I choose what I become",
#   "I’ll let go of things I can’t control",])

ads = MessageSet.create(theme: "Advertising",
  messages: ["I am too smart to be brainwashed by ads",
  "I won’t be tricked into buying things I don’t need",
  "How are ads trying to affect me today?",
  "What are algorithms assuming about me?",
  "When I see an ad, I take a deep breath and ignore it."])

exams = MessageSet.create(theme: "Exams/Deadlines",
  messages: ["A goal is a dream with a deadline.",
    "Never do tomorrow what you can do today.",
    "Success consists of going from failure to failure without loss of enthusiasm.",
    "What will make today a win for you?",
    "Trust yourself, you know more than you think you do.",
    "Without hard work, nothing grows but weeds.",
    "Either you run the day or the day runs you.",])

social = MessageSet.create(theme: "Social Media",
  messages: ["blah blah blah Social Media 1.",
    "blah blah blah Social Media 2.",
    "blah blah blah Social Media 3.",
    "blah blah blah Social Media 4.",
    "blah blah blah Social Media 5.",
    "blah blah blah Social Media 6.",
    "blah blah blah Social Media 7.",])

beauty = MessageSet.create(theme: "Beauty Standards",
  messages: ["blah blah blah Beauty Standards 1.",
    "blah blah blah Beauty Standards 2.",
    "blah blah blah Beauty Standards 3.",
    "blah blah blah Beauty Standards 4.",
    "blah blah blah Beauty Standards 5.",
    "blah blah blah Beauty Standards 6.",
    "blah blah blah Beauty Standards 7.",])

loneliness = MessageSet.create(theme: "Loneliness/isolation",
  messages: ["blah blah blah Loneliness/isolation 1.",
    "blah blah blah Loneliness/isolation 2.",
    "blah blah blah Loneliness/isolation 3.",
    "blah blah blah Loneliness/isolation 4.",
    "blah blah blah Loneliness/isolation 5.",
    "blah blah blah Loneliness/isolation 6.",
    "blah blah blah Loneliness/isolation 7.",])

climate = MessageSet.create(theme: "Climate change",
  messages: ["blah blah blah Climate change 1.",
    "blah blah blah Climate change 2.",
    "blah blah blah Climate change 3.",
    "blah blah blah Climate change 4.",
    "blah blah blah Climate change 5.",
    "blah blah blah Climate change 6.",
    "blah blah blah Climate change 7.",])

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

Mood.create(emoji: "😃", name: "happy", happiness_level: 10)
Mood.create(emoji: "🥺", name: "sad", happiness_level: 1)
