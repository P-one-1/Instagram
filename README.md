# HEROKU DEPLOY FOR EXISTING GIT REPO

* Enter into project directory and enter command:
    `heroku login`

* Login to Heroku and create a repo/app.

* Connect this app with git repo you wish to deploy.

* Missing `secret_key_base` for `production` environment, set this string with `rails credentials:edit`
    *   run `EDITOR=vim rails credentials:edit`
    *   save and commit config/credentials.yml.enc

* Add Heroku remote url to project repo using command:
    `heroku git:remote -a APP-NAME`

* Use this command to deploy the app:
    `git push heroku master`


# HEROKU COMMANDS

* Run migration on Heroku explicitly using command:
    `heroku run rails db:migrate`

* Check server logs:-
    * See previous logs: `heroku logs -n 1500`
    * Tail the logs live: `heroku logs -t`

* Access server console:-
    * heroku run rails console --app app_name `Need to add app name for the first time, to connect with server(heroku) app.`
