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

### What are top words for each character?
Every character in any series have some words that they speak more often than others. To look at words unique to each character, words that occured among most common word list of at least half the key characters were removed. This was in addition to removalof stopwords as described above. Results are as below.

![Top_words](/results/top_words_character.png)

### How are the characters speaking their lines? (Sentiment Analysis)
Sentiment analysis was done on each line to identify if it was positive, negative, neutral. Below chart displays the proportion of lines in each sentiment for all key characters

![Sentiment](/results/sentiment.png)

### Which characters co-occur the most in scenes?
Identify the top 2 characters in each scene for ease of plotting. Below heatmap displays number of scenes in which the key characters occur together.

![Co-occurence](/results/co-occurence.png)

### What are the key topics underlying the lines of characters across all episodes (Topic Modeling using LDA)
Below table displays the key words in top 5 topics for the key characters. Note that this is not the full table with all key characters

![Topic-modeling](/results/topic_modelling.png)

### References
In addition to the references mentioned in each section in the Notebook, below are some additional references used throughout the project

https://python-graph-gallery.com/all-charts/
https://deanmarchiori.github.io/posts/2018/02/simpsons/
https://www.analyticsvidhya.com/blog/2018/02/the-different-methods-deal-text-data-predictive-python/


