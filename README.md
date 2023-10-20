# README

# Configuration
* Using ruby version `3.2.1`
* Node version `18.17.0`

# Setup
* Git clone the repository and have docker installed in the system
* Build and run the docker file to start the app `docker-compose build && docker-compose up`

# Notes
* This will preseed the following data in the database.

| Email                | Password   | Department Name  | Role    |
|----------------------|------------|------------------|---------|
| tech@gmail.com       | password   | Tech             | Manager |
| finance@gmail.com    | password   | Finance          | Manager |
| hr@gmail.com         | password   | HR               | Manager |
| marketing@gmail.com  | password   | Marketing         | Manager |


* A user has Manager and team_member role
* Only managers are allowed to create/update users in the app
* Each manager can only see users belonging to there department.
* Using Pundit gem to allow authorization for the users.