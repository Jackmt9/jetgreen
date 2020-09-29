# Jetgreen
Jetgreen is an application to be used by airline gate-agents to manage and alter outbound flights.

### Table of Contents
- [Features](#features)

- [Getting Started](#getting-started)

- [Tools](#tools)

- [Project Layout](#project-layout)

### Features
A user is able to:
- Cancel flights
- Remove passengers
- Update passenger profiles
- View passengers and their flight history
- View in-flight movies and meals
- Add items to in-flight meals
- View flight manifest

### Getting Started
This project utilizes a Ruby on Rails frontend and backend. 

To launch the server:
1. Clone this repository.
2. Install all dependencies by running ```$ bundle install```
3. Be sure you have a [Postgresql](https://www.postgresql.org/) server running.
4. Create your database table by running ```$ rails db:create```
5. Migrate to set up your database schema by running ```$ rails db:migrate```.
6. Initialize the seed data by running ```$ rails db:seed```
7. Run ```$ rails server``` to start your server. 
8. Open your browser and navigate to http://localhost:3000/ 
9. The login information is located in the seed data (Username: jack, Password: password).

### Tools
- Ruby on Rails
- ActiveRecord
- Postgresql
- SQL
- Bcrypt
- Twilio Text Messaging API
- Faker Seed Data

### Project Layout
Full schematics for this project can be viewed [here](https://www.figma.com/file/8c66iBeLmd7WjY4PpqJzj5/JetGreen-Airways?node-id=0%3A1).
