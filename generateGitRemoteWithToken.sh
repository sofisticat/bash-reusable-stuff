#!/bin/bash
read -p "Insert your git username: " USERNAME
read -p "Insert the oauth token:(see https://github.com/settings/tokens)" NEW_TOKEN
read -p "Insert the repo name: " REPO

URL=https://${USERNAME}:${NEW_TOKEN}@github.com/${USERNAME}/${REPO}.git

echo $URL;
