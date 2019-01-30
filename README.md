# Text mining on The Office scripts
A data science project to learn the NLTK package by exploring insights from scripts of the show The Office, one of my all time favourites

### Data Source 
Data was downloaded from the following source. It contains lines from all scenes across 9 seasons and 201 episodes in total
https://www.reddit.com/r/datasets/comments/6yt3og/every_line_from_every_episode_of_the_office_us/

### Data Preparation
Data pre-processing involved the following
* Removing punctuations and converting to lowercase
* Stemming using Snowball stemmer
* Removing Stopwords
  * Using English dictionary stopwords in NLTK
  * Creating an additional list of stopwords as all the words that occur in more than 50% of episodes. This was needed for certain analysis

### What is the Airtime of key characters?
Airtime is measured by proportion of number of words spoken by each of the characters in each season. Below graph displays the top 5 characters by airtime proportion in each season

![Airtime of Characters](/results/airtime.png)

It would have been a blasphemy if Michael did not come up as the one with highest airtime. It is a nice validation to see airtime of Andy increase in season 8, in which he becomes the Regional Manager and see Robert, CEO of Sabre (Parent company of Dunder Mifflin) among the top 5 in the same season.

### What are top words for each character?
Every character in any series have some words that they speak more often than others. To look at words unique to each character, words that occured among most common word list of at least half the key characters were removed. This was in addition to removal of stopwords as described above. Results are as below.

![Top_words](/results/top_words_character.png)

This pretty much reflects the story line for each of these characters. e.g. Angela's top words are Dwight- her love interest and later her husband, Kevin and Oscar - her team mates on the accounting team and, senator- whom she first married.

### How are the characters speaking their lines? (Sentiment Analysis)
Sentiment analysis was done on each line to identify if it was positive, negative, neutral. Below chart displays the proportion of lines in each sentiment for all key characters

![Sentiment](/results/sentiment.png)

It is phenomenal that almost 100% of Michael's lines were positive. No wonder inspite of his constant bickering, he never really comes across as annoying. It is also not surprising that the grumpy and disgruntled Stanley has almost the highlest negative sentiment lines. He comes close second to Meredith, whose alcohol problem and pathetic work performance might be resulting into her high negative sentiment.

### Which characters co-occur the most in scenes?
Below heatmap is a representation of number of scenes in which the key characters occur together.

![Co-occurence](/results/co-occurence.png)

It actually comes as a surprise that Michael and Dwight have the most scenes together. I always thought it was Jim and Dwight or Jim and Pam. 

The network below is another way of looking at the co-occurence. The size of nodes represent total number of scenes for that character, while the width of edge represent the number of scenes in which the characters co-occur

![Co-occurence network] (/results/cooccur_network.png)

### What are the key topics underlying the lines of characters across all episodes (Topic Modeling using LDA)
This was done to understand the key abstract topics for each character. LDA algorithm gives the top words in each topic that ideally should describe that topic. Below table displays the key words in top 5 topics for the key characters. Note that this is not the full table with all key characters

![Topic-modeling](/results/topic_modelling.png)

Topics aren't very clear for all the characters, but for some they seem meaningful. e.g. Kelly - Her 1st topic is around the bridesmaid dress that she was forced to return, 2nd on her passion for fashion and romance, 3rd and 5th topics about her Indian boyfriend Ravi whom she dumped. There are some clear trends for Holly too. Her 1st topic is about the time when Darryl and Michael drive her back to her home in a truck, 2nd topic seems to be about Todd Packer, Michael's friend whom Holly wasnt too fond of, 3rd topic is definitely about the time when Holly tries to conduct Ethics seminar, 4th seems to be about the time when Holly shares news of her being engaged to Michael to her parents but them seem mentally disillusioned, 5th about the time when she has tickets to some show she want to go to with Michael but Michael doesnt get the hint

### Do some characters have bigger lines than the others?
Boxplot below displays the distribution of line length for each key character. Analysis done on lines across all seasons/episodes

![Dialogue length](/results/dialogue_length.png)

As expected, Michael, Dwight and Jim have slightly high median length of lines as compared to others. There isn't much difference among the others.

### References
In addition to the references mentioned in each section in the Notebook, below are some additional references used throughout the project.

https://python-graph-gallery.com/all-charts/

https://deanmarchiori.github.io/posts/2018/02/simpsons/

https://www.analyticsvidhya.com/blog/2018/02/the-different-methods-deal-text-data-predictive-python/


