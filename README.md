# LSE_CapstoneProject

Capstone Project for MSc Applied Social Data Science at the London School of Economics and Political Science:


This project engaged with the evolving media environment in the UK and considered whether the emergence of all-online political news platforms was leading to shifts in consumer sentiments about politics. I engaged with a wide range of past literature to form my main hypothesis: that people exposed to born-digital news are more likely to express greater degrees of high-arousal negative emotions about politics than people exposed to more traditional legacy media. This, I believed, was likely due to high-degrees of subjective and emotionally charged content published by born-digital outlets.

To test this hypothesis, I designed a survey that randomly assigned participants into one of two groups: one group read 2 political articles in the style of born-digital media while the other read 2 political articles in the style of legacy media. The same topics were covered in the articles of both treatment groups, allowing the treatment to only differ based on journalistic style. Immediately after reading each article, participants were invited to record audio of themselves discussing the political topic covered in the article.

I then wanted to establish the emotional states of these participants and see whether high-arousal negative emotions were observed more frequently in the born-digital treatment group. To achieve this, I used a Hidden Markov Modelling approach to classify trimmings of the clips collected from the survey participants into distinct emotional categories. 

The aim of this audio-based technique was to reduce bias seen in emotion self-reporting. This type of bias is often introduced when participants have an expectation about how they are supposed to feel, which isn't always in line with what they are actually feeling. This can lead them to report emotions incorrectly (as an example, a Labour party supporter believes they are angry about COVID parties in lockdown because they don't like Boris Johnson, but they are actually fairly indifferent). The approach further aimed to move beyond using textual cues to classify emotions by considering a participant's tone.
