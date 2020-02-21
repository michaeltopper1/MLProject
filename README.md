# Objectives for ML

The README file will be used for objectives for our project. I have broken the objectives into stages. This is just a first pass. I expect things to come and go from this. However, I do think we should put notes on all of the changes we make.

# Data Cleaning

- Change marriage into a binary variable

- Convert the categorical variables into categorical variables. For example, Race is currently identified as a continuous variable, not categorical.

- Identify if we need more covariates
  - Currently have ~3 continuous variables (personal income, total income, wage and salary income). We can add more if needed.
  
- Set up a training, test and validation set
  - One option: 75% of 2019 training, 25% testing, and 2009 validation.
    - Not married to the idea, just spit-balling
  

# Exploratory Analysis

- Create scatterplots of the different covariates highlighting the divorce or married

- Start manipulating the data so that we can have relatively clear cuts in the covariates. We aren't interested in the interpertation of the variables per se but simply the predictions. That said, I would be interested to see if people making less money tend to get divorced more.