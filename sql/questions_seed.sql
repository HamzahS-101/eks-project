USE quizdb;

-- First, clear anything old if needed
DELETE FROM questions;

-- Sports
INSERT INTO questions (category, question, option1, option2, option3, option4) VALUES
('Sports', 'Which sport uses a bat and ball?', 'Cricket', 'Football', 'Tennis', 'Basketball'),
('Sports', 'In which country were the first Olympic Games held?', 'Greece', 'Italy', 'France', 'USA'),
('Sports', 'How many players are there in a football (soccer) team?', '11', '9', '10', '12'),
('Sports', 'The term "love" is used in which sport?', 'Tennis', 'Cricket', 'Football', 'Golf'),
('Sports', 'Which country won the FIFA World Cup 2018?', 'France', 'Brazil', 'Germany', 'Spain'),
('Sports', 'NBA is associated with which sport?', 'Basketball', 'Tennis', 'Football', 'Baseball'),
('Sports', 'What is the national sport of Japan?', 'Sumo', 'Karate', 'Judo', 'Kendo'),
('Sports', 'Which sport has a position called "goalkeeper"?', 'Football', 'Tennis', 'Baseball', 'Golf'),
('Sports', 'In which sport do you score a "home run"?', 'Baseball', 'Football', 'Basketball', 'Cricket'),
('Sports', 'In golf, what is the term for one under par?', 'Birdie', 'Eagle', 'Albatross', 'Bogey');

-- Politics
INSERT INTO questions (category, question, option1, option2, option3, option4) VALUES
('Politics', 'Who was the first President of the United States?', 'George Washington', 'Abraham Lincoln', 'John Adams', 'Thomas Jefferson'),
('Politics', 'Which political ideology supports private ownership?', 'Capitalism', 'Communism', 'Socialism', 'Anarchism'),
('Politics', 'Who is the current Secretary-General of the UN (2025)?', 'Antonio Guterres', 'Ban Ki-moon', 'Kofi Annan', 'Boutros-Ghali'),
('Politics', 'Which document starts with "We the People"?', 'US Constitution', 'UN Charter', 'Magna Carta', 'Bill of Rights'),
('Politics', 'What color is associated with the Democratic Party in the US?', 'Blue', 'Red', 'Green', 'Yellow'),
('Politics', 'Which country has the largest democracy?', 'India', 'USA', 'China', 'Brazil'),
('Politics', 'The Kremlin is located in which country?', 'Russia', 'Germany', 'Poland', 'Ukraine'),
('Politics', 'What is the political capital of the EU?', 'Brussels', 'Berlin', 'Paris', 'Rome'),
('Politics', 'Which ancient city-state is considered the birthplace of democracy?', 'Athens', 'Rome', 'Sparta', 'Carthage'),
('Politics', 'Who is known as the Father of the Nation in South Africa?', 'Nelson Mandela', 'Desmond Tutu', 'Jacob Zuma', 'Steve Biko');

-- General Knowledge
INSERT INTO questions (category, question, option1, option2, option3, option4) VALUES
('General Knowledge', 'Which planet is called the Red Planet?', 'Mars', 'Earth', 'Jupiter', 'Venus'),
('General Knowledge', 'Water boils at what temperature (Celsius)?', '100', '90', '80', '110'),
('General Knowledge', 'What is the capital of Japan?', 'Tokyo', 'Beijing', 'Seoul', 'Bangkok'),
('General Knowledge', 'Which animal is known as the King of the Jungle?', 'Lion', 'Tiger', 'Elephant', 'Bear'),
('General Knowledge', 'How many days are there in a leap year?', '366', '365', '364', '367'),
('General Knowledge', 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Van Gogh', 'Picasso', 'Michelangelo'),
('General Knowledge', 'Which language has the most native speakers?', 'Mandarin', 'English', 'Spanish', 'Hindi'),
('General Knowledge', 'Which continent is Egypt in?', 'Africa', 'Asia', 'Europe', 'Australia'),
('General Knowledge', 'How many bones are in the adult human body?', '206', '208', '210', '212'),
('General Knowledge', 'The Great Wall is located in which country?', 'China', 'Japan', 'Korea', 'India');

-- Animals and Nature
INSERT INTO questions (category, question, option1, option2, option3, option4) VALUES
('animals and nature', 'What is the fastest land animal?', 'Cheetah', 'Lion', 'Tiger', 'Horse'),
('animals and nature', 'Which bird is known for its colorful tail?', 'Peacock', 'Parrot', 'Eagle', 'Crow'),
('animals and nature', 'Which tree gives the most oxygen?', 'Peepal', 'Banyan', 'Neem', 'Mango'),
('animals and nature', 'Which is the largest reptile?', 'Crocodile', 'Komodo Dragon', 'Alligator', 'Snake'),
('animals and nature', 'What do you call a group of lions?', 'Pride', 'Herd', 'Pack', 'Swarm'),
('animals and nature', 'Which animal is known as the "Ship of the Desert"?', 'Camel', 'Elephant', 'Horse', 'Donkey'),
('animals and nature', 'Which flower blooms once every 12 years?', 'Neelakurinji', 'Rose', 'Tulip', 'Sunflower'),
('animals and nature', 'Which animal is herbivore?', 'Cow', 'Lion', 'Wolf', 'Tiger'),
('animals and nature', 'Which plant is called the "king of spices"?', 'Pepper', 'Cardamom', 'Turmeric', 'Clove'),
('animals and nature', 'Which gas do plants release?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen');

-- Inventions
INSERT INTO questions (category, question, option1, option2, option3, option4) VALUES
('inventions', 'Who invented the light bulb?', 'Thomas Edison', 'Nikola Tesla', 'Alexander Graham Bell', 'Isaac Newton'),
('inventions', 'Who invented the airplane?', 'Wright Brothers', 'Bell', 'Newton', 'Einstein'),
('inventions', 'Who invented the World Wide Web?', 'Tim Berners-Lee', 'Bill Gates', 'Steve Jobs', 'Elon Musk'),
('inventions', 'Who invented dynamite?', 'Alfred Nobel', 'Einstein', 'Edison', 'Tesla'),
('inventions', 'Who invented the telephone?', 'Alexander Graham Bell', 'Newton', 'Tesla', 'Galileo'),
('inventions', 'Who invented the printing press?', 'Johannes Gutenberg', 'Shakespeare', 'Einstein', 'Darwin'),
('inventions', 'Who invented the radio?', 'Nikola Tesla', 'Edison', 'Newton', 'Galileo'),
('inventions', 'Who invented the first vaccine?', 'Edward Jenner', 'Pasteur', 'Curie', 'Einstein'),
('inventions', 'Who proposed the law of gravity?', 'Isaac Newton', 'Einstein', 'Tesla', 'Darwin'),
('inventions', 'Who improved the steam engine?', 'James Watt', 'Isaac Newton', 'Thomas Edison', 'Alexander Bell');




