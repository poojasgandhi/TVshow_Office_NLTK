# Text mining on The Office scripts
A data science project to learn the NLTK package by exploring insights from scripts of the show The Office, one of my all time favourites

### Data Source 
Data was downloaded from the following source. It contains lines of all scenes in 9 seasons and 201 episodes in total
https://www.reddit.com/r/datasets/comments/6yt3og/every_line_from_every_episode_of_the_office_us/

### Data Preparation
Data pre-processing involved the following
* Removing punctuations and converting to lowercase
* Stemming using Snowball stemmer
* Removing Stopwords
  * Using English dictionary stopwords in NLTK
  * Creating an additional list of stopwords as all the words that occur in more than n% of episodes for certain analysis

### What is the Airtime of key characters?
Airtime is measured by proportion of number of words spoken by each of the characters in each season. Below graph displays the top 5 characters by airtime proportion in each season

![Airtime of Characters](/results/airtime.png)

### Do some characters have bigger lines than the others?
Boxplot below displays the distribution of line length for each key character. Analysis done on lines across all seasons/episodes

![Dialogue length](/results/dialogue_length.png)
