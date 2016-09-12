# Learnhowtoprogram.com (Ruby on Rails) (Unfinished)

This app was made to practice using Ruby on Rails. It is a remake of the Epicodus curriculum website "learnhowtoprogram.com". It contains courses, sections, and lessons. Users can cycle through the lessons by clicking next. 

### Installation

Open Terminal and clone the repository.  
```
$ cd Desktop
$ git clone https://github.com/noahramey/to_do_rails.git
```

Navigate to the repository and bundle Ruby gems:
```
$ cd to_do_rails
$ bundle install
```

Make sure Postgres is running on your local machine, then setup the database:
```
$ rails db:setup db:test:prepare
```

Start the Rails server.
```
$ rails s
```

Open your browser and navigate to `localhost:3000`.


License
-------

MIT License. Copyright &copy; 2016 "Noah Ramey"

