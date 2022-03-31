3. Explore the structure of the albums table. 
a. How many rows are in the albums table? 
a. 31 

SELECT count(*) 
from albums 

b. How many unique artist names are in the albums table?
b. 23

SELECT DISTINCT artist
from albums;

C.  What is the primary key for the albums table?
C. id

D.  What is the oldest release date for any album in the albums table? What is the most recent release date?
D. 1967, 2011 

SELECT release_date
from albums
order by release_date;

4. Write queries to find the following information:
a. The name of all albums by Pink Floyd
a. The Dark Side of the Moon, The Wall 

SELECT name, artist
from albums
where artist = 'Pink Floyd'

b. The year Sgt. Pepper's Lonely Hearts Club Band was released
b. 1967

SELECT name, release_date
from albums
order by name

c. The genre for the album Nevermind
c. Grunge, Alternative Rock

SELECT name, genre
from albums
order by name


d. Which albums were released in the 1990s
d. The Bodyguard, Jagged Little Pill, Come On Over, Falling into You, Let's Talk About Love, Dangerous, The Immaculate Collection, Titanic: Music from the Motion Picture, Metallica, Nevermind, Supernatural

SELECT release_date, name
from albums
where release_date > 1989 and release_date < 2000


e. Which albums had less than 20 million certified sales
e. Sgt. Pepper's Lonely Hearts Club Band, Grease: The Original Soundtrack from the Motion Picture, Abbey Road, Dangerous, Nevermind, The Wall, Brothers in Arms, Dirty Dancing, Titanic: Music from the Motion Picture, Let's Talk About Love, Bad, The Immaculate Collection, Born in the U. S. A. 

SELECT name, sales
from albums
order by sales;

f. All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
f. Thriller, Back in Black, The Dark Side of the Moon, Bat Out of Hell, Their Greatest Hits, Rumours, Led Zeppelin IV, Bad, Jagged Little Pill, Falling into You, Sgt, Pepper's Lonely Hearts Club Band, Hotel California, Dirty Dancing, Let's Talk about Love, 1, Dangerous, Abbey Road, Born in the U.S.A., Brothers in Arms, Nevermind, The Wall, Supernatural, Appetite for Destuction

SELECT name, genre
from albums
where genre LIKE '%rock%';