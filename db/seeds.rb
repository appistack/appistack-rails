# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artists = [{
               id: 0,
               first_name: 'Dave',
               last_name: 'Chappelle',
               description: 'How baked?',
               headshot: '/img/artists/dave-chappelle.jpg'
           }, {
               id: 1,
               first_name: 'Dana',
               last_name: 'Carvey',
               description: 'Turtle!',
               headshot: '/img/artists/dana-carvey.jpg'
           }, {
               id: 2,
               first_name: 'Barack',
               last_name: 'Obama',
               description: 'Yes we can',
               headshot: '/img/artists/barack-obama.jpg'
           }, {
               id: 3,
               first_name: 'George',
               last_name: 'Bush',
               description: 'Nucular Strategery',
               headshot: '/img/artists/george-bush.jpg'
           }, {
               id: 4,
               first_name: 'Darrell',
               last_name: 'Hammond',
               description: 'The Penis, Mightier!',
               headshot: '/img/artists/darrell-hammond.jpg'
           }, {
               id: 5,
               first_name: 'Will',
               last_name: 'Ferrell',
               description: 'Your question must be in the form of an answer.',
               headshot: '/img/artists/will-ferrell.jpg'
           }, {
               id: 6,
               first_name: 'Mike',
               last_name: 'Myers',
               description: 'Get in my belly!',
               headshot: '/img/artists/mike-myers.jpg'
           }, {
               id: 7,
               first_name: 'Arnold',
               last_name: 'Schwarzenegger',
               description: 'Ve mahst git to ze choppa!',
               headshot: '/img/artists/arnold.jpg'
           }, {
               id: 8,
               first_name: 'David',
               last_name: 'Conner',
               description: 'One of these is not like the others.',
               headshot: '/img/artists/david-conner.jpg'
           }].map { |a| Artist.create!(a) }

#========================================
# Dave Chappelle
sounds = [{
              id: 0,
              artist_id: 0,
              name: 'Byahh!',
              description: 'Dave Chappelle\'s rendition of the heavily edited Howard Dean \'Byah!\''
          }, {
              id: 1,
              artist_id: 0,
              name: 'What?! (Lil Jon)',
              description: 'Yeeaahh!!',
              audiofile: '/sounds/dave-chappelle/what.mp3'
          }, {
              id: 2,
              artist_id: 0,
              name: 'I\'m Rich, Bitch!',
              description: 'Yeeaahh!!',
              audiofile: '/sounds/dave-chappelle/im-rich-bitch.mp3'
          }, {
              id: 32,
              artist_id: 0,
              name: 'Tell anybody, I\'ll kill ya!',
              description: 'Shhhh!',
              audiofile: '/sounds/dave-chappelle/tell-anybody-ill-kill-ya.mp3'
          }, {
              id: 33,
              artist_id: 0,
              name: 'Four Years? Just for Weed?',
              description: 'Virginia is not for hippies.',
              audiofile: '/sounds/dave-chappelle/four-years-just-for-weed.mp3'
          }, {
              id: 34,
              artist_id: 0,
              name: 'Yeahh!!!',
              description: 'What?!',
              audiofile: '/sounds/dave-chappelle/yeah.mp3'
          }, {
              id: 3,
              artist_id: 0,
              name: 'Chappelle Evil Laugh',
              description: 'ha-ha-ha.'
          }, {

#========================================
# Dana Carvey
id: 4,
artist_id: 1,
name: 'Turtle!',
description: 'Turtle .. Turtle!'
          }, {
              id: 5,
              artist_id: 1,
              name: 'Church Lady',
              description: 'Mmmmmm .... Satan?!',
              audiofile: '/sounds/dana-carvey/church-lady.mp3'
          }, {
              id: 6,
              artist_id: 1,
              name: 'Pumping Up',
              description: 'Hanz \'n\' Franz'
          }, {
              id: 7,
              artist_id: 1,
              name: 'Bob Dylan',
              description: 'Everybody',
              audiofile: '/sounds/dana-carvey/bob-dylan.mp3'
          }, {
              id: 35,
              artist_id: 1,
              name: 'Cracker Boy (Ross Perot)',
              description: 'Ross Perot',
              audiofile: '/sounds/dana-carvey/ross-perot-cracker-boy.mp3'
          }, {
              id: 36,
              artist_id: 1,
              name: 'Wayne\'s World "I\'m not worthy"',
              description: 'Everybody',
              audiofile: '/sounds/dana-carvey/garth-im-not-worthy.mp3'
          }, {

#========================================
# Barack Obama
id: 8,
artist_id: 2,
name: 'Look at Yourself',
description: 'Look at yourself before you pass judgement.'
          }, {
              id: 9,
              artist_id: 2,
              name: 'Remember what that\'s like?',
              description: 'Remember what that\'s like?'
          }, {
              id: 10,
              artist_id: 2,
              name: 'Goddamn Hawaii!',
              description: 'LMAO'
          }, {
              id: 11,
              artist_id: 2,
              name: 'Last years of HS in a Daze',
              description: 'I spent the last two years of high school in a daze.',
              audiofile: '/sounds/barack-obama/hs-in-a-daze.mp3'
          }, {
              id: 37,
              artist_id: 2,
              name: 'Man, what do you think those folks say about us? ..',
              description: '... behind our backs?',
              audiofile: '/sounds/barack-obama/what-do-you-think-those-folks.mp3'
          }, {

#========================================
# George Bush
id: 12,
artist_id: 3,
name: 'Don\'t Mess With Texas!',
description: 'Don\'t do it! They got guns, a real big fence and their own power grid.'
          }, {
              id: 13,
              artist_id: 3,
              name: 'Nucular Arsenal',
              description: '"Uhh Susanne ... it\'s nucular arsenal."'
          }, {
              id: 14,
              artist_id: 3,
              name: 'Stategery',
              description: 'In one word, please sum up your candidacy.'
          }, {
              id: 38,
              artist_id: 3,
              name: 'Don\'t Stay Up Too Late',
              description: 'Don\'t stay up too late.',
              audiofile: '/sounds/george-bush/dont-stay-up-too-late.mp3'
          }, {
              id: 39,
              artist_id: 3,
              name: 'No New Taxes!',
              description: 'Read my lips, punk.',
              audiofile: '/sounds/george-bush/no-new-taxes.mp3'
          }, {
              id: 40,
              artist_id: 3,
              name: 'Not Only Once, But Twice!',
              description: 'Fool me once ..',
              audiofile: '/sounds/george-bush/not-only-once-but-twice.mp3'
          }, {
              id: 41,
              artist_id: 3,
              name: 'Prosperity',
              description: 'In the 21st Century',
              audiofile: '/sounds/george-bush/prosperity.mp3'
          }, {

#========================================
# Darrell Hammond
id: 15,
artist_id: 4,
name: 'The Pen Is Mightier',
description: 'The Penis, Mightier'
          }, {
              id: 16,
              artist_id: 4,
              name: 'Therapist',
              description: 'The Rapist'
          }, {
              id: 17,
              artist_id: 4,
              name: 'That\'s not what your mother said last night.',
              description: 'Well, it\'s not'
          }, {
              id: 18,
              artist_id: 4,
              name: 'That\'s "An Album Cover" ... ',
              description: '.. NOT ANAL BUM COVER!',
              audiofile: '/sounds/darrell-hammond/anal-bum-cover.mp3'
          }, {
              id: 42,
              artist_id: 4,
              name: 'Famous Titties for $400',
              description: '',
              audiofile: '/sounds/darrell-hammond/famous-titties.mp3'
          }, {
              id: 43,
              artist_id: 4,
              name: 'The Day is Mine!',
              description: 'Itsall mine!',
              audiofile: '/sounds/darrell-hammond/the-day-is-mine.mp3'
          }, {

#========================================
# Will Ferrell
id: 19,
artist_id: 5,
name: 'Sean Connery, would you pick a category?',
description: ''
          }, {
              id: 20,
              artist_id: 5,
              name: 'We\'re... We\'re going streaking!',
              description: 'From Old School'
          }, {
              id: 21,
              artist_id: 5,
              name: 'Blue, how come there\'s no ice in my lemonade?',
              description: 'Now drop and give me ten, Blue!'
          }, {
              id: 22,
              artist_id: 5,
              name: 'You\'re... you\'re crazy, man. I like you, but you\'re crazy.',
              description: 'From Old School, after the Tranquilizer Dart'
          }, {
              id: 44,
              artist_id: 5,
              name: 'Ricky Bobby says "Brush your teeth"',
              description: 'When I wake up in the morning ...',
              audiofile: '/sounds/will-ferrell/brushing-teeth.mp3'
          }, {
              id: 45,
              artist_id: 5,
              name: 'Hi Everybody, It\'s Harrey Carrey!',
              description: 'Do you like Hot Dogs?',
              audiofile: '/sounds/will-ferrell/hi-everybody-harrey-carrey-here.mp3'
          }, {
              id: 46,
              artist_id: 5,
              name: 'I invented the piano key necktie!',
              description: 'I did it! Me!!',
              audiofile: '/sounds/will-ferrell/i-invented-the-piano-key-necktie.mp3'
          }, {
              id: 47,
              artist_id: 5,
              name: 'Maahh! The Meatloaf!',
              description: 'What is she even doing back tehre?',
              audiofile: '/sounds/will-ferrell/mah-the-meatloaf.mp3'
          }, {
              id: 48,
              artist_id: 5,
              name: 'Skate your tits off!',
              description: '',
              audiofile: '/sounds/will-ferrell/skate-your-tits-off.mp3'
          }, {
              id: 50,
              artist_id: 5,
              name: 'So stick with Bushie!',
              description: '... and don\'t vote -- don\'t listen to liberals ...',
              audiofile: '/sounds/will-ferrell/stick-with-bushie.mp3'
          }, {
              id: 51,
              artist_id: 5,
              name: 'Two Words -- Clothing Optional',
              description: 'What would *you* change about figure skating?',
              audiofile: '/sounds/will-ferrell/two-words-clothing-optional.mp3'
          }, {
              id: 52,
              artist_id: 5,
              name: 'Blue! You\'re My Boy!',
              description: 'You got this, Blue! Just trust me! I\'m Frank the Tank!',
              audiofile: '/sounds/will-ferrell/blue-youre-my-boy.mp3'
          }, {
              id: 54,
              artist_id: 5,
              name: 'An Endless Supply of Hot Dogs! (Harrey Carrey)',
              description: 'They\' be so abundant, they\'d become our currency!',
              audiofile: '/sounds/will-ferrell/hot-dog-currency.mp3'
          }, {
              id: 70,
              artist_id: 5,
              name: 'Twenty Hotdogs to the Nickel! (Harrey Carrey)',
              description: 'I\'m not quite sure...',
              audiofile: '/sounds/will-ferrell/twenty-hotdogs-to-the-nickel.mp3'
          }, {
              id: 55,
              artist_id: 5,
              name: 'Would You Eat the Moon? (Harrey Carrey)',
              description: 'We all know the moon isn\'t made of green cheese ...',
              audiofile: '/sounds/will-ferrell/would-you-eat-the-moon.mp3'
          }, {

#========================================
# Mike Myers
id: 23,
artist_id: 6,
name: 'Get in my belly! (Fat Bastard)',
description: '',
audiofile: '/sounds/mike-myers/fat-bastard-get-in-my-belly.mp3'
          }, {
              id: 24,
              artist_id: 6,
              name: 'Sharks with frickin\' LAZER beams attached to their heads!',
              description: 'You know, I have one simple request ...'
          }, {
              id: 25,
              artist_id: 6,
              name: 'One Million Dollars! ...',
              description: 'One million dollars!'
          }, {
              id: 26,
              artist_id: 6,
              name: 'One Billion Dollars!!',
              description: 'One billion dollars!'
          }, {
              id: 27,
              artist_id: 6,
              name: 'Twins, Basil!',
              description: 'Twins, Basil!'
          }, {
              id: 56,
              artist_id: 6,
              name: 'Danger is my middle name.',
              description: 'Austin Danger Powers',
              audiofile: '/sounds/mike-myers/danger-is-my-middle-name.mp3'
          }, {
              id: 57,
              artist_id: 6,
              name: 'Denied!',
              description: 'Access Denied.',
              audiofile: '/sounds/mike-myers/denied.mp3'
          }, {
              id: 58,
              artist_id: 6,
              name: 'And when Dr. Evil gets angry ...',
              description: '... Mr. Bigglesworth gets upset.',
              audiofile: '/sounds/mike-myers/dr-evil-mr-bigglesworth.mp3'
          }, {
              id: 59,
              artist_id: 6,
              name: 'Do you fancy another go? (Fat Bastard)',
              description: '',
              audiofile: '/sounds/mike-myers/fat-bastard-get-in-my-belly.mp3'
          }, {
              id: 60,
              artist_id: 6,
              name: 'I\'m Gonna Eat You! (Fat Bastard)',
              description: '',
              audiofile: '/sounds/mike-myers/fat-bastard-im-gonna-eat-you.mp3'
          }, {
              id: 61,
              artist_id: 6,
              name: 'I\'ve not seen my willie (Fat Bastard)',
              description: '.. in two years!',
              audiofile: '/sounds/mike-myers/fat-bastard-ive-not-seen-my-willie.mp3'
          }, {
              id: 62,
              artist_id: 6,
              name: 'You\'re lucky wee man! (Fat Bastard)',
              description: '',
              audiofile: '/sounds/mike-myers/fat-bastard-youre-lucky-wee-man.mp3'
          }, {
              id: 63,
              artist_id: 6,
              name: 'I Looovve Gooollldd!',
              description: 'Goldfinger',
              audiofile: '/sounds/mike-myers/i-love-gold.mp3'
          }, {
              id: 64,
              artist_id: 6,
              name: 'I put the GRRR in swinger, baby!',
              description: 'Austin Powers',
              audiofile: '/sounds/mike-myers/i-put-the-grr-in-swinger.mp3'
          }, {
              id: 65,
              artist_id: 6,
              name: 'I\'ts not my bag, baby!',
              description: 'I swear!',
              audiofile: '/sounds/mike-myers/its-not-my-bag-baby.mp3'
          }, {
              id: 66,
              artist_id: 6,
              name: 'One Million Dollars!',
              description: '',
              audiofile: '/sounds/mike-myers/one-million-dollars.mp3'
          }, {
              id: 67,
              artist_id: 6,
              name: 'Throw me a frickin\' bone!',
              description: '',
              audiofile: '/sounds/mike-myers/throw-me-a-frickin-bone.mp3'
          }, {
              id: 68,
              artist_id: 6,
              name: 'Twins, Basil!',
              description: 'Twins!',
              audiofile: '/sounds/mike-myers/twins-basil-twins.mp3'
          }, {
              id: 69,
              artist_id: 6,
              name: 'Why Trillion?',
              description: 'When you could have a billion?',
              audiofile: '/sounds/mike-myers/why-trillion.mp3'
          }, {

#========================================
# Arnold Schwarzenegger
id: 28,
artist_id: 7,
name: 'Get to Ze Choppa!',
description: 'Ve mahst git to ze choppa!',
audiofile: '/sounds/arnold/get-to-the-choppa.mp3'
          }, {
              id: 29,
              artist_id: 7,
              name: 'Hasta la Vista, Baby',
              description: 'Hasta la Vista'
          }, {
              id: 30,
              artist_id: 7,
              name: 'Come with me if you want to live.',
              description: 'Come with me if you want to live, Mr. Conner.',
              audiofile: '/sounds/arnold/come-with-me.mp3'
          }, {
              id: 31,
              artist_id: 7,
              name: 'Take it easy. We\'re the good guys.',
              description: 'From End of Days',
              audiofile: '/sounds/arnold/good-guys.mp3'
          }, {

#========================================
# David Conner
id: 71,
artist_id: 8,
name: 'Mark Wahlberg just got the data.',
description: 'Boston Accent',
audiofile: '/sounds/dc/boston-accent.mp3'
          }, {
              id: 72,
              artist_id: 8,
              name: 'It\'s Caffé Crema.',
              description: '',
              audiofile: '/sounds/dc/caffe-crema.mp3'
          }, {
              id: 73,
              artist_id: 8,
              name: 'The Count',
              description: 'One Bat, Two Bats.',
              audiofile: '/sounds/dc/one-bat-two-bats.mp3'
          }, {
              id: 74,
              artist_id: 8,
              name: 'If You Hate Fillin\' Out Your Timesheets.',
              description: 'Falsetto Taco Bell Commercial',
              audiofile: '/sounds/dc/fillin-out-your-timesheets.mp3'
          }, {
              id: 75,
              artist_id: 8,
              name: 'Trick Love the Kids',
              description: 'Trick Daddy',
              audiofile: '/sounds/dc/trick-love-the-kids.mp3'
          }].map {|s| Sound.create!(s) }