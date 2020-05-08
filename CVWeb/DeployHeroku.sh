#!/bin/sh

# Need to be logged in before deploying

# Add latest changes to git
git add .
git commit -m "Commit changes for heroku deploy"

# Deploy
git push heroku master
