# csv importer

Test task to implement csv upload logic.


## Dependencies
- this repo uses Ruby 3.2.2 and Rails 7.0.5
- install ruby version with rvm or rbenv
- Postgres vesrion 15


## Installation

first clone the repository git@github.com:Jeko0/csv_importer.git

after cloning you have to navigate to config/database.yml file and change username and password credentials to connect with you postgres user db

```bash
  cd my-project
  rails db:create db:migrate
```
install all dependencies with 

```bash
  bundle install 
```

after that feel free to run the server 

```bash
  rails s
```

```bash
 You can find test csv file in spec/fixtures/files directory. Note: this logic uses product details to import csv file. if you want to use your own csv file make sure to have headers: ID:int/bigint, Name:string, Description:text, Quantity:int, Price:float
```


## Authors

- [@jeko](https://github.com/Jeko0)

