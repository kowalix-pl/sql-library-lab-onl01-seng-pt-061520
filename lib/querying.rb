def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books 
  where series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters 
  order by motto limit 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT DISTINCT species,  COUNT (*)  
  FROM characters
  GROUP BY species
  order by species desc limit 1;
  "
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name 
  FROM authors 
  join subgenres on authors.id = subgenres.id;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series 
  join characters on series.author_id = characters.author_id
  where species = 'human' LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  " SELECT characters.name, count (*)
  FROM characters
  join character_books on characters.id = character_id
  group by characters.name
  order by count(*) DESC, characters.name asc ;"
end
