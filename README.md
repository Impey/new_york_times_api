# new_york_times_api
## Description
Using the New York Times API. I tested the movies service of the api in which it queries the API and finds movies related to your query eg "star" returns "star wars" and "A star is born" . I have tested that all data returned from api is correct and consistent. This has all been done using the Service object model(SOM) approach so if another service of the api needs to be tested it is easily expandable with the SOM structure.

## Languages used
1. Ruby

## How to download
1. Clone or download this repoisitry
2. unzip the file and open it in your choice of IDE

## How to use
1. go to your terminal and whilst in the directory of the application type "bundle install" to install all the required gems for the application to work
2. next add a .env file which you need to add your api key in order to make calls to the api sign up https://developer.nytimes.com/ here and get personal API key add the below code to your .env file
```ruby 
API_KEY= add your key here
```
3. type "rspec" winthin terminal to check all tests run and pass
4. To change the seach query you want to test you need to change star to another term you want to seach for example "Aquaman" can be put in place of "star".
``` ruby 
@movies.getdata('star')
```
5. After changing the city rerun the "rspec" to check the tests still pass

## Challenges
1. Time restrction being tighter on this mini project lead to only one service being tested
2. Testing all the data of the same time came back with some inconsistent data which may be a mistake within the API
3. The nesting of some data confused me at times

## Learning points
1. I set the SOM up much faster with this project with little amount of errors

