# Moviez - a simple movie app
##### This app allows its users to simply:
1. Easily find movies by selecting different genres, languages and services
2. Get information about movies and movie people
3. Add movies to the lists
4. Keep track of their watched movies
5. Rate movies

##### The app was created using:
1. React as a frontend library
2. Express.js as a backend framework
3. PostgreSQL database

##### Database schema
<br/>
![DB schema](https://github.com/mato-m/movie-app/assets/64593617/5f36e8eb-98b3-4143-84e1-3ce59b3910a4)
<br/>
##### Environment variables
You should define the following variables in .env file
in order to use the app properly. Variables starting with
DB are related to database parameters.

PORT - default is 3000
DB_USER
DB_HOST
DB_DATABASE
DB_PASSWORD
DB_PORT
JWT_SECRET - secret key used for JWT validation
##### DB dump file
You can import [dump.sql][1] file into your DBMS
to have access to existing data and admin user,
since it cannot be created through the app.
##### Existing users
|email | password  | role |
| ------------ | ------------ | ------------ | ------------ | ------------ |
| admin  | 123  | admin |
|  user1 |   123|  user |
| user2  | 123  | user |
|  user3 |   123|  user |

##### Future plans
1. Add loading animations
2. Enable users to connect with other users with similar movie taste
3. Enable comments
4. Search boxes
5. Reduce image size to save space
[1]: https://github.com/mato-m/movie-app/blob/main/dump.sql "`dump.sql`"
