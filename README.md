# MUSHROOMS

### An app where you can filter different types of mushrooms that meet specific attributes.
#### Check out [Mushrooms on heroku](https://filter-mushrooms.herokuapp.com/)

## App Main functionalities:
- From the data provided from UCI Machine Learning repository, mushroom has twenty-three(23) attributes.
- Each attributes is also classified into its own sub fields.
- You can filter mushrooms based on the sub fields then click on the `Apply Filter` button to view the results in tabular form.
- You can search on all fields for a match with the search terms; search terms can be separated by commas.
- You can `Reset` the filter(s)/search by clicking on the `Reset` button.
- Filter and Search results are paginated; 25 rows per page.

| Mushroom class | Cap Shape | Cap Surface | Cap Color | Bruises | Odor | Gill Attachment |  Gill Spacing | Gill Size | Gill Color | Stalk Shape | Stalk Root | Stalk Surface Above Ring | Stalk Surface Below Ring | Stalk Color Above Ring | Stalk Color Below Ring | Veil Type | Veil Color | Ring Number | Ring Type | Spore Print Color | Population | Habitat |
|--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| e - edible | b - bell | f - fibrous | n - brown | t - bruises | a - almond | a - attached | c - close | b - broad | k - black | e - enlarging | b - bulbous | f - fibrous | f - fibrous | n - brown | n - brown | p - partial | n - brown | n - none | c - cobwebby | k - black | a - abundant | g - grasses
| p - poisonous | c - conical | g - grooves | b - buff | f - no | l - anise | d - descending | w - crowded | n - narrow | n - brown | t - tapering | c - club | y - scaly | y - scaly | b - buff | b - buff | u - universal | o - orange | o - one | e - evanescent | n - brown | c - clustered | l - leaves
| - | x - convex | y - scaly | c - cinnamon | - | c - creosote | f - free | d - distant | - | b - buff  | - | u - cup | k - silky | k - silky | c - cinnamon | c - cinnamon | - | w - white | t - two | f - flaring | b - buff | n - numerous | m - meadows
| - | f - flat | s - smooth | g - gray | - | y - fishy | n - notched | - | - | h - chocolate  | - | e - equal | s - smooth | s - smooth | g - gray | g - gray | - | y - yellow | - | l - large | h - chocolate | s - scattered | p - paths
| - | k - knobbed | - | r - green | - | f - foul | - | - | - | g - gray  | - | z - rhizomorphs | - | - | o - orange | o - orange | - | - | - | n - none | r - green | v - several | u - urban
| - | s - sunken | - | p - pink | - | m - musty | - | - | - | r - green  | - | r - rooted | - | - | p - pink | p - pink | - | - | - | p - pendant | o - orange | y - solitary | w - waste
| - | - | - | u - purple | - | n - none | - | - | - | o - orange  | - | ? - missing | - | - | e - red | e - red | - | - | - | s - sheathing | u - purple | - | d - woods
| - | - | - | e - red | - | p - pungent | - | - | - | p - pink  | - | - | - | - | w - white | w - white | - | - | - | z - zone | w - white | - | -
| - | - | - | w - white | - | s - spicy | - | - | - | u - purple  | - | - | - | - | y - yellow | y - yellow | - | - | - | - | y - yellow | - | -
| - | - | - | y - yellow | - | - | - | - | - | e - red  | - | - | - | - |  -| - | - |  -|  -|  -|  -|  -| -
| - |-  | - | - | - |-  | - |-  | - | w - white  | - |  -|  -| - |  -| - | - | - | - |  -|-  | - | -
| - |-  | - | - | - | - | - | - | - | y - yellow  | - | - | - | - | - |-  | - | - |  -| - | - |-  | -


## Getting Started
- To clone the app, run `git clone https://github.com/mercyoseni/mushrooms.git`
- Checkout to the app's directory, run `cd mushrooms`
- Run `bundle install` to install gem dependencies
- Run `rails db:setup` to create databases, run migrations, and seeds
- Run `rails s` to start the server, navigate to `http://localhost:3000`

## Tests
- To run the tests, run `rspec spec`

## Screenshots:

### **Homepage - When no filtering or searching**
<img width="1413" alt="Screenshot 2019-07-29 at 3 45 21 AM" src="https://user-images.githubusercontent.com/26272984/62018620-55e76080-b1b3-11e9-9b4d-8f25229027ea.png">

### **When no records found from filtering or searching**
<img width="1433" alt="Screenshot 2019-07-29 at 3 46 45 AM" src="https://user-images.githubusercontent.com/26272984/62018659-83cca500-b1b3-11e9-9e8f-eeb7297d0147.png">

### **When records is found from filtering**
<img width="1418" alt="Screenshot 2019-07-28 at 12 15 22 AM" src="https://user-images.githubusercontent.com/26272984/62000401-e2b7ee80-b0cd-11e9-9e6c-c7ffba6703db.png">

### **Pagination and filter action buttons**
<img width="1375" alt="Screenshot 2019-07-28 at 12 28 14 AM" src="https://user-images.githubusercontent.com/26272984/62000429-a042e180-b0ce-11e9-96c9-22f18eb92f53.png">

### **Search**
<img width="1436" alt="Screenshot 2019-07-28 at 10 57 05 PM" src="https://user-images.githubusercontent.com/26272984/62013569-47d21980-b18c-11e9-8f53-c95c92ce1b32.png">

<img width="1397" alt="Screenshot 2019-07-28 at 11 03 34 PM" src="https://user-images.githubusercontent.com/26272984/62013570-486ab000-b18c-11e9-8059-94a54a55d5b8.png">

## Limitations
- The app is not mobile responsive

## References
- [Mushroom Dataset on Kaggle](https://www.kaggle.com/uciml/mushroom-classification#mushrooms.csv)
- [Mushroom Dataset on UCI ML Repository](https://archive.ics.uci.edu/ml/datasets/Mushroom)
