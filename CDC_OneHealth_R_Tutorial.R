# ---
# title: Intro to R 
# student: "YOUR NAME HERE"
# date: "DATE HERE"
# authors: Ella de Wolfe (https://github.com/15edewolf) & Sierra Jech (https://github.com/sjech)
# modified from original 2021 version on 10/7/2023
# ---
   
   
### What is R? What is R Studio?
   
# R refers to both the programming language and software used for statistical computing.  

# R Studio is a graphical user interface (GUI) that makes it much easier to interact with the R software. It adds handy drop-down menus, visualizations, and other features that make your life easier. R does the work, R Studio makes it pretty. 
 
 
### Why R?
 
# 1. **It's Free!:** Obviously a benefit since other statistical programs require subscriptions in the range of thousands of dollars. It's also open-source which means anyone can inspect it and report bugs, reducing the chance of mistakes. 

# 2. **Its reproducible!:** R involves a lot more typing than pointing and clicking. While this means it might be a steeper learning curve, it makes it way easier to repeat an analysis. Instead of having to remember what all you clicked on and in what order, you can just re-run code you typed and saved. This means someone else (or your future self) can easily repeat your analysis and obtain the same results. 
 
# 3. **Lots of people use it!:** and many of them are willing to help you out. There are tons of online (and free) resources for learning R.

# 4. **It can do almost anything!:** R works on data of all shapes and sizes and produces high quality (even interactive) graphics and figures. There are tens of thousands of available packages that extend the capabilities of R. Nearly anything you can think of, there's an R package that can do it. 
 
 
### Finding your way around R Studio

# After opening R studio you will see 4 panes (maybe 3, meaning one is hidden and that's fine). These four panes are as follows and their locations are given based upon the defaults of R Studio. You can change this (or may have already done so) if you prefer an alternate set up. 
 
# 1. Source (Top Left). This pane contains the scripts or data you are working on currently. You can have more than one open at a time with tabs.

# 2. Console (Bottom Left). This pane contains a history of the commands you have run. You can also execute code directly in this pane. Any code you write in the console will not save, so we recommend doing all of your coding in a script (top left pane).
 
# 3. Environment/History/Connections (Top Right). The environment contains data which R can access at this given moment. The history tab contains a history of the code you have run. The connections tab allows you to access outside data sources.
 
# 4. The final pane (Bottom Right) contains several tabs. In this pane, you can view plots, search for files on your computer, install packages (we will get to this in a minute), and even find documentation on packages or functions. This pane is your friend. 

## Personalizing your Studio experience:
# Under the "Tools" menu (at the top of the screen) you can choose "Global Options" which allows you to change various things including the layout of the panes described above ("Pane Layout") and the background color/theme ("Appearance").
 
 
### R scripts

# One of the major  benefits of using a program like R is the ability to write code once and "reuse" it over and over again with slight modifications. This allows you to run an analysis for a collaborator (or yourself) and save it until next year when they ask you to do the same thing again. This is also essential for reproducibility. You can type code directly into the console, but this would only keep your work until you exit the program. In order to save your work for future analyses, programming into a script is highly recommended. These files contain only code and any notes/comments must be "commented out" using a # symbol. Text that is commented out with a hashtag will appear in a different color than text that is not commented. 
 
### R Projects and Working Directories

# Your working environment and working directory are extremely important when you want to read in data or save an analysis. Imagine you are in your office; this is your working directory. You can write on a piece of paper and save it on your desk. You can also find notes which you left yourself. You are able to easily access anything in your office. Your neighbors office, while located in the same hallway, requires you to back out of your office and then enter hers. This analogy holds true for finding files on your computer as well. Your working environment will allow you to access files quickly and to write copies of your analysis or environment easily. Like you can walk into your co-workers office, you can change your working directory to access a different set of files. 
 

# Create a folder (aka directory) on your computer dedicated to this class. Substitute underscores or periods for spaces in the folder name. 

# Run the code below to find your current file path in the Console.
# Use **CTRL + ENTER** (**OPTION + ENTER** and **COMMAND + ENTER** also work on a Mac
getwd()

# You need to make sure the working directory is set to the folder you made. There are two ways to do this. If you know the file path, you can use the setwd() function, like this:
#setwd("/Users/RachelWatson/Capstone2023/Intro2R")

# Another method is to click on "Session" > "Set Working Directory" > "Choose Directory". This allows you to navigate to the correct folder without knowing the filepath. 

# Run getwd() again to verify that the correct folder is set. You can also click on Files pane to view the files now available to you. 

### About this Tutorial

# This tutorial is a mixture of information, provided example code and "challenges" like the one above in which you will write your own code (which may be required for future steps...). Don't be scared to ask for help on any of these! The overarching goal of this tutorial is for you to create your own resource to refer to throughout this course and any future coding you might do.  I highly encourage you to add your own notes as commented code. This is your resource, so personalize it and make it whatever you feel will help you the most!

# You do not need to memorize all of the information here! The key is becoming familiar with R and knowing where you can find the code that will accomplish what you need to do whether it's referencing this tutorial, using the help pages built into R, or a well-worded Google search.
 
### Lets get started!!!
 
### R as a calculator

# The most basic function of R is as a normal calculator. Below are some examples of basic operations you can perform in R (and really any thing you can think of, you can do it in R). You can run each of these calculations individually by placing your cursor on a single line or you can run them all at once by highlighting them all. 
2+7
9-1
2*12
5/2
6^2

### Creating Objects in R

# When you start doing more complex calculations that use much more computational power, you won't want to run the function every time you need it. Instead, you can store the values and name them using the "assignment operator" (<-). Think of this as an arrow assigning anything on the right to the name on the left. Below is an example. Notice that when you run this code, "x" appears in your Environment.
x <- 1 + 1

# Notice that this does not show us the value of x. There are a few ways we can tell R to print the value. 

# Also remember you can (and definitely should) use # to insert comments into your code as demonstrated below
(x <- 1 + 1)  #parentheses will tell R to create an object and print the value all in one line
x #after creating our object "x" we can tell R to print the value by typing the name

#### *Challenge #1:
##### *We can now perform further operations on the objects we create. Can you create an object named "y" that is 3 times the value of x?*



### Functions

# Anything followed by a set of parentheses in R is a function. R comes with many predefined functions and more are available through packages. When we install and load packages, we are essentially defining functions. The below example is a simple function that will take the square root of a number.
sqrt (49)

# The above function only takes one argument (the number you want to take the square root of) but many functions take multiple arguments. Another simple example is the round() function which takes two arguments: the number you want to round (x), and the number of resulting decimal places you would like (digits). These can be defined explicitly or implicitly in a specified order as shown below. (Also notice that pi is pre-defined in R).
round (x=pi, digits=2) #defined explicitly
round (pi, 2) #defined implicitly, ORDER MATTERS when you define like this
round (digits=2, x=pi) #order does not matter when you define explicitly

# You can also nest or "pipe" functions in which you send the result of one function into another. For example, to round the square root of a number, you could do the following:
round (sqrt (50), digits=2)

#### Installing Packages

# Packages are a collection of functions that aren't included in base R, which allows us to access a lot more functionality of R without having to write all of the code from scratch ourselves. To access a package you need to do two things: install it and load it. You only need to install a package once on your computer (unless you need to re-download or update R) but you need to load the package each time you open R and wish to use it. Run the code below to install the "tidyr" and "dplyr" packages. We will use this later in the tutorial.

#this line downloads the package to your computer
#install.packages("tidyr","dplyr")
#this line loads the package into your current session
library(tidyr)
library(dplyr)

#this lets you see what packages you have loaded at the moment
(.packages())

##### Getting Help

# I've said it before but I will say it again: you do not need to memorize any of the functions in R, you just need to know where to find the necessary information about them. One easy way to do this is the help page in R. If you remember the name of a function but don't remember what it does or the arguments it takes, or see a function you are not familiar with, simply type the name of the function with a question mark in front of it to access the help page for the function. Run the code below to learn about the "plot()" function in R (one that we will use quite a bit...). What arguments does this function require?
  
# Another great resource is Google! It is 100% OK to Google things like "scatter plots in R" or "plot() function in R". 
?plot
# when you run the code above, the Help window will be activated. Click on 'Generic X-Y Plotting' to view help information about that function in base R. I use basic plotting rarely. It is better to use ggplot for plotting which you will learn below because it is more customizable. I only use basic plotting when I want a quick scatterplot or histogram that I do not intend to keep or view again.

### Vectors, Matrices, and Data Types

# Up until now, we have saved single values when we create objects, but we can do much more. Vectors are one of the most common data types in R and are composed of a series of values. To create a vector we use the c() function. 

v <- c(1, 5, 2, 8, 3)
w <- 1:5 #this is a shortcut for "w <- c(1, 2, 3, 4, 5)

# Vectors can also be character values (aka letters, words, or a combination of letters and numbers). Note that the quotes are necessary, it tells R to treat these words as something called character strings rather than looking for an object named "blackberries" that does not exist.

fruit <- c("blackberries", "raspberries", "peaches", "plums")

#### Functions on Vectors

# We can perform functions on our vectors. Some functions act on each individual element of the vector:
v + 2
v*8
v + w #notice that these vectors must be the same length to do this...see how to find the length of a vector below

# Other functions act on the vector as a whole
sum (v)
length (v)

#### *Challenge #2:*
##### *Can you find the mean of our vector v?*


#### Specifying elements in a vector

# You can refer to specific numbers within your vector using "indexing" with square brackets. For example, if you wanted to know the 3rd number in the vector v, you would run the following code:
v[3]

#### *Challenge #3:*
##### *Use the above indexing to find the 4th fruit in our "fruit" vector?*



#### Hierarchy of Data Types

# As shown above, vectors can be made of numbers *or* characters. However, a single vector must contain all the same data type. There are several other types of data R recognizes and there is a hierarchy of how R will coerce data (shown below). If a vector contains elements of different data types, R will treat it as the lowest type on the hierarchy. For example, if you mix letters and numbers, R will treat every element as a character value.

# 1. Logical (TRUE or FALSE (or just T or F))
 
# 2. Integer (1, 2, 3...)
 
# 3. Numerical (any number)
 
# 4. Complex Numbers (numbers with imaginary components...remember i?)
 
# 5. Character or factor (letters)
 
# You can use the str () or class() functions to determine the type of vector you are working with. For example
str (v)

##### *Challenge #4:*
##### *What types of data are each of the vectors defined below? Make sure you understand and can explain why.*
a <- 1:4
b <- c("1", "2", "3", "4")
c <- c (T, F, FALSE, TRUE, NA)
d <- c ("a", "b", "c", 4)
e <- c("A", "B", "C", "D", "E", F)

#### Matrices

# Vectors are data in 1 dimension, matrices are data in 2 dimensions. You can even go farther with arrays which are data in 3 or more dimensions (but that hurts my brain to think too much about that...). We won't spend too much time with matrices but it's good to know they exist and how they work. Here are a few examples. Notice how each element is indexed [row, column].

matrix (1:9, nrow=3, byrow=TRUE)
matrix (1:9, nrow=3, byrow=FALSE)

### Data Frames!!!

# Think of data frames as the R version of excel spreadsheets. They are essentially a collection of vectors that are all the same length. As such, we can create data frames in R from vectors.

#first we create our vectors
names <- c("Sally", "Bob", "Joe", "Susan")
height_in <- c(66, 70, 72, 69)
age <- c(30, 45, 23, 62)

#now we combine them into a data frame
data <- data.frame(names=names, height_in=height_in, age=age)
#the reason we say names=names is that we want a column called "names" 
#and the data for it can be found in the object called "names".

# Now lets take a look at our data frame. We can do this several ways. Try running the below code and clicking the spreadsheet icon near the "data" object in your environment (top right pane).

# Ask yourself: Does the data look like what we might expect or want it to? What type of data is present in each column? 

data #this prints the data frame straight into the R Markdown
View (data) #this opens a tab to view your data frame (the same as clicking on it)
str (data) #this tells you the types of data present in each column

#### Subsetting Data

# The first way to subset data is by numerically specifying rows and columns in the format data [row, column], similar to what we did earlier with vectors and matrices. For example:
data[1,] #first row, all columns
data[,1] #first column, all rows
data[1,2] #first row, second column

# You can (thankfully) also specify columns by name using a dollar sign:
data$names
data$age

# We can also subset using logical statements (TRUE or FALSE statements). Lets start by seeing if anyone has a height greater than 70 inches.
data$height_in > 70

#Since there is someone taller that 70 inches, let's see who it is and the rest of the data
#to see data for only people with height > 70 inches:
data[data$height_in > 70,] 
#notice that we need to include the comma because we want to see rows with height >70

#to see the name of the person taller than 70 inches:
data[data$height_in > 70,]$names

#We can combine our criteria for height and age. Say we want to know if someone is either taller 70 inches *or* older than 50 years old (they fit one or the other criterion, but don't have to meet both). Alternatively we could also see if anyone is both taller 70 inches *and* older than 50 years old (they must meet both criteria).
data[data$height_in > 70 | data$age > 50,]$names #or
data[data$height_in > 70 & data$age > 50,]$names #and

#We could also create a new data frame with only people shorter that 70 inches:
data_short <- data[data$height_in < 70,] 

#Now that we have a data frame, we can add to it. Remember how we can perform functions on vectors? The same goes for columns in a data frame. Here's how we might create a column to tell us height in cm:
data$height_cm <- 2.54*data$height_in

#### Reading in Data

# You will be happy to know our main source of data frames is not this cumbersome way of building them in R. We can import them from various file types including csv (comma separated values) files. I generally enter my data into an excel file, save it as a CSV, and read it in using the read.csv function.

# You should have two csv files in your folder where this R script is located (your working directory), "US.population.csv" & "notifiable.diseases.csv". This data comes from the Centers for Disease Control (CDC) archive, the National Notifiable Diseases Surveillance System (NNDSS), and contains the number of cases of infectious diseases in the United States since 1956. To view the annual reports with raw data, go to https://stacks.cdc.gov/browse/collections.

# Let's read in the data using the code below. 
diseases <- read.csv("notifiable.diseases.csv")

# First let's look at the structure of our data frame. What type of data is present in each column? This is important because often data doesn't import the way we want it to. You can also view the whole data frame by clicking on the spreadsheet icon by "diseases" in the environment pane.
View (diseases) #this opens a tab to view your data frame

# The first column contains the official name of the disease, the second column contains the class of the microorganism responsible for the disease, and columns 3-47 contain case counts from 1956-2019 

# Notice that there are many NA values in the data frame. Many diseases are newer and have only recently become important (notifiable). It is also likely that disease reporting has changed over the past 60 years. Keep these in mind as you interpret the data.

#### *Challenge #x:*
##### *What class of data is in the "Microorganism" column?*
class(diseases$Microorganism)

# Let's summarize the data by the type of microorganism that causes it (virus, bacterium, parasite) and think about trends over time. For this, we will use several "data wrangling" functions found in the dplyr and tidyr packages. The pipe operator %>% feeds one operation into the other and is very useful for keeping your code clean and readable. The group_by() function allows you to group by column values. In the code below, we will determine the total number of cases in 1959 that were caused by each microorganism:
diseases %>%
  group_by(Microorganism) %>%
  summarise(sum1956 = sum(cases_1956, na.rm = T))

# There are more viral infectious disease cases than bacterial in 1956. 
##### *What about in 2019?*




# The structure of the data frame matters when you start working with more advanced mapping or statistical tools. Right now, our data frame is wide. Every year has it's own column which means that we are able to do year-by-year calculations (as above with sum) but trends over time will be harder to code. Instead, we should make the data long. Almost every time that I have to do this, I go to this website for help: http://www.cookbook-r.com/Manipulating_data/Converting_data_between_wide_and_long_format/ 

# The function that we need is in the tidyr package which we already loaded into the R environment:
diseases_long <- gather(diseases, year, case_count, cases_1956:cases_2019)
# The above code creates a new object called diseases_long which takes in the old dataframe that is wide and creates two new columns called year and case_count. The data in year will be the column headers and the data in case_count will be the values in the cells. We will collapse all 44 columns of year data into just two columns. We will also factor the year column which means that we 

# View the new dataframe that you made and think about the new format. We now have 4,275 rows and only 4 columns.

# with this format, we can still do the summation calculation that we did above, but the code will look slightly different
diseases_long %>%
  filter(year == "cases_1956") %>%
  group_by(Microorganism) %>%
  summarise(sum1956 = sum(case_count, na.rm = T))
# Do these values match the values you got above for the wide dataframe? They should match.

# Now that our data are long, we can look at trends over time much more easily. With the old dataframe, we would have needed to calculate the case count sum 44 times. Now, we can do it once:
microbe_type_summary <- diseases_long %>%
  group_by(Microorganism, year) %>%
  summarise(sums = sum(case_count, na.rm = T))

# Let's plot this information to look at trends over time. We will use ggplot, so let's install the package
library(ggplot2)

microbe_type_summary %>%
  ggplot()+
  geom_line(mapping = aes(x = year, y = sums, group = Microorganism, color = Microorganism))+
  theme_classic()

# This helps us visualize the raw case count over time. Note how sloppy the x-axis looks. You cannot read the year values properly. Let's do a bit more data wrangling to fix this issue. We are going to split the column called "year" into two at the underscore. There are many ways to do this but I like that separate function in the tidyr package:
microbe_type_summary <- separate(data = microbe_type_summary, col = year, into = c("garbage", "year"), sep = "_")

# if you want to tidy up your dataframe, you can delete a column like this:
microbe_type_summary <- microbe_type_summary %>% select(-"garbage")

# let's run the plotting code again with this modified dataframe and then let's make some modifications to the graph
microbe_type_summary %>%
  ggplot()+
  geom_line(mapping = aes(x = year, y = sums, group = Microorganism, color = Microorganism))+
  labs(x = "Year", y = "Case Count", "color" = "Disease Vector")+
  theme_classic()+
  theme(axis.text.x = element_text(angle = 90))
# there are many modifications you can make in the ggplot world. Nearly any modification you can think of including text size, text captions, colors, line types, labels, etc can be modified using ggplot. Just google what you want

# In the code above, we are working with absolute case numbers, but the population of the US increased by 1.6 million during that time, so we should adjust the case counts to rates per 100,000 people. First, read in the spreadsheet containing the US population over time:
population <- read.csv("US.population.csv")

# We are going to work on merging the population data with the dataframe that we have been plotting with so that we can do a few calculations and re-plot the data. Before merging, we need to check that the column names are unique except for the column which we will base the merge on. For example, in the microbe_type_summary dataframe, we want a new column with the US population in alignment with the years that are already listed in the dataframe. In the microbe_type_summary dataframe, the column is called "year" and in the population dataframe, the column is called "Year". Let's make sure the data are the same type as well
class(microbe_type_summary$year)
class(population$Year)

# in the dataframe that we created, year is classed as a character column. We need to coerce it into an integer column
microbe_type_summary$year <- as.integer(microbe_type_summary$year)
class(microbe_type_summary$year) # looks good

microbe_type_summary <- left_join(microbe_type_summary, population, by = c("year" = "Year"))
# check your dataframe to make sure that the merge happened correctly...does every instance of 1956 have the same population value?

# Now let's create a new column which is the number of cases per 100,000 people, called case_rate
microbe_type_summary$case_rate <- microbe_type_summary$sums / microbe_type_summary$Population_x100000

# now create an R visualization just like the previous one, but with the case rate instead of raw cases
microbe_type_summary %>%
  ggplot()+
  geom_line(mapping = aes(x = year, y = case_rate, group = Microorganism, color = Microorganism))+
  labs(x = "Year", y = "Cases per 100,000 people", "color" = "Disease Vector")+
  theme_classic()+
  theme(axis.text.x = element_text(angle = 90))

# Observations about the graph? 

# Let's dive into individual diseases. What do you think is causing the high number of viral cases before 1960?

# To address this question, we can use sorting, subsetting, and plotting techniques. But first, I use some of the same data wrangling methods that we needed before
diseases_long <- separate(data = diseases_long, col = year, into = c("garbage", "year"), sep = "_")
class(diseases_long$year)
diseases_long$year <- as.integer(diseases_long$year)
class(diseases_long$year) # looks good


#1) Filtering & Sorting
diseases_long %>%
  filter(Microorganism == "virus") %>%
  group_by(Disease) %>%
  arrange(-case_count)
# all of the highest virus case counts are due to Measles

#2) Building a new dataframe 
virus_pre1960 <- diseases_long %>% 
  filter(Microorganism == "virus") %>%
  filter(year <= 1960) %>%
  drop_na()

#3) Plotting
virus_pre1960 %>%
  ggplot()+
  geom_line(mapping = aes(x = year, y = case_count, color = Disease))+
  theme_classic()
# now it is easier to see the relative contribution of Measles, Polio, Hepatitis, and Rabies to the total viral cases prior to 1960. Most of the cases were measles. 




# West Nile Virus
# Use some of the tools I have showed you above to explore the West Nile Virus case counts over time. I have an example workflow below:

#1) What is West Nile virus called in the data? A function that may help you is unique()
unique(diseases_long$Disease)
# "Arboviral diseases, West Nile virus disease, Neuroinvasive "                      
# "Arboviral diseases, West Nile virus disease, Non-neuroinvasive " 

#2) Make a new dataframe that contains all of the data for West Nile Virus. Note that there are two different names for West Nile Virus in the dataset. Also note that the names for these disease end with a space
wnv <- diseases_long %>% filter(Disease == "Arboviral diseases, West Nile virus disease, Neuroinvasive ")
#wnv <- diseases_long %>% filter(Disease %in% c("Arboviral diseases, West Nile virus disease, Neuroinvasive ","Arboviral diseases, West Nile virus disease, Non-neuroinvasive "))

#3) Merge population count data onto your new dataframe. Create a new column to calculate the cases per 100,000 people
wnv <- left_join(wnv, population, by = c("year" = "Year"))
wnv$case_rate <- wnv$case_count / wnv$Population_x100000

#4) Create a plot of West Nile virus over time.
wnv %>%
  drop_na() %>%
  ggplot() +
  geom_line(mapping = aes(x = year, y = case_rate))+
  theme_classic()

# this is a good start, but it is unsatisfying because it is hard to draw any conclusions or ask any further questions about this data without other data that are at the same scale as the nation-wide case data. 

# Instead, let's start exploring county-level West Nile cases. We will load a new dataframe that came from Historic Data (1999-2022) from the CDC's ArboNET (National Arbovirus Surveillance System): https://www.cdc.gov/westnile/statsmaps/historic-data.html

# Let's re-create the map that they show on the website of West Nile virus human neuroinvasive disease average incidence per 100,000 population by county of residence, 1999-2002

wnv_counties <- read.csv("wnv_rate_counties1999_2022.csv")
#wnv_c_i <- wnv_counties %>% select("County", "Incidence")
wnv_c_l <- wnv_counties %>% select("County", "Legend")
#colnames(wnv_c_i)[1] <- "FIPS"
colnames(wnv_c_l)[1] <- "FIPS"

library(sf)
library(USAboundaries)
library(USAboundariesData)

map_sf <- us_counties() #geoid is the FIPS code
# note that the geoid values have a leading zero for those with sig figs = 4
# add a leading zero to the wnv_c_i dataframe for those that need it
wnv_c_l[1:219, 1] <- paste0("0", wnv_c_l[1:219, 1])


# Example map 
ggplot(data=map_sf) +
  geom_sf(fill = "grey") +
  coord_sf() +
  theme_minimal()

# there is a problem with the state.name columns
map_sf <- map_sf %>% select(-"state_name")

wnv_cl_latlong <- left_join(map_sf, wnv_c_l, by = c("geoid" = "FIPS")) %>% 
  filter(jurisdiction_type != "territory") %>%
  filter(!(state_name %in% c("Hawaii", "Alaska"))) %>%
  st_as_sf(crs = 4326)

unique(wnv_cl_latlong$Legend)
wnv_cl_latlong$Legend <- factor(wnv_cl_latlong$Legend, levels = c("0.01 to 0.16", "0.17 to 0.37", "0.38 to 1.09", ">1.10"))

ggplot() +
  geom_sf(data=wnv_cl_latlong, mapping = aes(fill = Legend)) +
  scale_fill_manual(values = c("cyan3", "deepskyblue2","deepskyblue4","darkblue"),na.value="white")+
  theme_minimal()

#note that if we plot "Incidence" instead of "Legend" then we get a color gradient

# Do you only care about Wyoming? 
#1) subset for only Wyoming
wnv_WY <- wnv_cl_latlong %>% filter(state_abbr == "WY")

#2) Try to map it
ggplot() +
  geom_sf(data=wnv_WY, mapping = aes(fill = Legend)) +
  scale_fill_manual(values = c("cyan3", "deepskyblue2","deepskyblue4","darkblue"),na.value="white")+
  theme_minimal()


# General Notes:
#1) You should format your R script in a way that is easy to read. You should always state a purpose, include the date and code author. Next, load your libraries. Next, load your data and functions. # This tutorial does not follow these rules. ALWAYS comment your code with all the details that you need in the future to figure out what you did

#2) Each script that you write should have one purpose. I would write a separate R script for mapping. If your code relies on calculations from a previous script then you can output the dataframe that you need. I usually create an outputs folder and a figures folder so that I can output all the things that I need. For example,
# add an output folder
write.csv(microbe_type_summary, "output/case_rate_by_microbe.csv")
# add a figure folder
ggsave("figures/WestNile_Virus_WYmap.pdf", width = 5, height = 5)

#3) At this point, you could get county-level West Nile virus data on climate or other variables of interest, add them to your dataframe and then plot them. There are many resources available online to help make plots more interactive. Usually, this requires a larger dataframe with more variables of interest. 

#4) There are many R packages that usedto be used for mapping and are now being archived (no longer supported). This means that you need to be careful about which online tutorials you choose to use. Any that use sp, rgeos, rgdal are old and will likely result in warnings/errors in R if you try to use them. sf is the correct spatial package that will likely give you everything(?) you need for mapping  
