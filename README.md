# README

## About
This project allows users to search from a database of scraped recipes based on ingredients they have.

## Getting started

First, clone the repo. Then visit [this url](https://pennylane-interviewing-assets-20220328.s3.eu-west-1.amazonaws.com/recipes-en.json.gz) for English-language recipes. When that downloads to your computer, save it under `app/assets` in your project directory with the filename `recipes.json`. It needs to be saved here in order to successfully seed the database (see line 2 in your seeds.rb file).

Once you have done that, open your terminal and run `rails db:seed` to populate the database.

When the database has finished seeding, run `rails s` and visit the given URL in your browser. The first thing you will see is a list of all the recipes available in the app. 

## Searching

Under the "All Recipes" heading on the homepage, you'll see a link that says `Click here to search`. Click that link to be taken to the search endpoint. 
You can type in search terms into the search bar at the top and hit enter.
The recipes returned will be recipes that have any of the ingredients you searched for. 

### Hosting
While this app runs on fly.io, the database is not yet seeded there.
