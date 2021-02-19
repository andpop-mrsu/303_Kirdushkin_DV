import re    

def explode(s):
    array = []
    id_end = re.match(r'\d*', s).end()
    id = s[:id_end]
    array.append(id) 
    year = "NULL"
    title = "NULL"
    genres = "NULL"
    if re.search(r'[(]\d\d\d\d[)]',s) is None:
        if re.search(r'(no genres listed)', s) is None:
            title_end = s.rfind(",")
            title = s[id_end+1: title_end]
            genres = s[title_end+1:]
        else:
            title = s[id_end+1:]
    else:
        year_end = re.search(r'[(]\d\d\d\d[)]',s).end()
        year_start = re.search(r'[(]\d\d\d\d[)]',s).start()
        year = s[year_start+1:year_end-1]
        genres = s[year_end+1:]
        title = s[id_end+1:year_start-1] 
    title = title.replace("'", "‘")   
    array.append(title) 
    array.append(year)
    array.append(genres)     
    return array

def setMovies():
    print("INSERT INTO movies (id, title, year, genres)\n", file=db)
    print(f"VALUES ", file=db)

    with open("movies.csv", "r", encoding="utf-8") as f:
        file = f.readlines()[1:]
        for i in range(len(file)):
            item = explode(file[i][:-1])
            if i != len(file)-1:
                print(f"({item[0]}, '{item[3]}', {item[2]}, '{item[1]}'),\n", file=db)
            else:
                print(f"({item[0]}, '{item[3]}', {item[2]}, '{item[1]}');\n", file=db) 

def setRatings():
    print("INSERT INTO ratings (id, user_id, movie_id, rating, timestamp)\n", file=db)
    print(f"VALUES", end=" ", file=db)
    
    with open("ratings.csv", "r") as fl:
        file = fl.readlines()[1:]
        for i in range(len(file)):
            item = file[i][:-1].split(",")
            if i != len(file)-1:
                print(f"({i}, {item[0]}, {item[1]}, {item[2]}, {item[3]}),\n", file=db)
            else:
                print(f"({i}, {item[0]}, {item[1]}, {item[2]}, {item[3]});\n", file=db) 

def setTags():         
    print("INSERT INTO tags (id, user_id, movie_id, tag, timestamp)\n", file=db)
    print(f"VALUES", end=" ", file=db)
    with open("tags.csv", "r") as fl:
        file = fl.readlines()[1:]
        for i in range(len(file)):
            item = file[i][:-1]
            item = item.replace("'", "‘")
            item = item.split(",")
            if i != len(file)-1:
                print(f"({i}, {item[0]}, {item[1]}, '{item[2]}', {item[3]}),\n", file=db)
            else:
                print(f"({i}, {item[0]}, {item[1]}, '{item[2]}', {item[3]});\n", file=db) 

def setUsers():    
    print("INSERT INTO users (id, name, email, gender, register_date, occupation)\n", file=db)
    print(f"VALUES", end=" ", file=db)
    
    with open("users.txt", "r") as fl:
        file = fl.readlines()[1:]
        for i in range(len(file)):
            item = file[i][:-1]
            item = item.replace("'", "‘")
            item = item.split("|")
            if i != len(file)-1:
                print(f"( {item[0]}, '{item[1]}', '{item[2]}', '{item[3]}', {item[4]}, '{item[5]}'),\n", file=db)
            else:
                print(f"( {item[0]}, '{item[1]}', '{item[2]}', '{item[3]}', {item[4]}, '{item[5]}');\n", file=db) 
 
def dropTables():    
    print("DROP TABLE IF EXISTS movies;\n", file=db)
    print("DROP TABLE IF EXISTS ratings;\n", file=db)
    print("DROP TABLE IF EXISTS tags;\n", file=db)
    print("DROP TABLE IF EXISTS users;\n", file=db)  

def createTables():
    print("CREATE TABLE movies (id INTEGER PRIMARY KEY, title VARCHAR, year INTEGER, genres VARCHAR);\n", file=db)
    print("CREATE TABLE ratings (id INTEGER PRIMARY KEY, user_id INTEGER, movie_id INTEGER, rating FLOAT, timestamp INTEGER);\n", file=db)
    print("CREATE TABLE tags (id INTEGER PRIMARY KEY, user_id INTEGER, movie_id INTEGER, tag VARCHAR, timestamp INTEGER);\n", file=db)
    print("CREATE TABLE users (id INTEGER PRIMARY KEY, name VARCHAR, email VARCHAR, gender VARCHAR, register_date DATE, occupation VARCHAR);\n", file=db)          
    
with open("db_init.sql", "w", encoding="utf-8") as db:
    dropTables()
    createTables()
    setMovies()
    setRatings()
    setTags()
    setUsers()
 


                
      
        

                
            
            

                