-- .mode box
-- .output Q1_output.csv
select substring(name,1,1) as first_alphabet,count(name) as count 
from artists left outer join albums using (ArtistId) 
group by substring(name,1,1);