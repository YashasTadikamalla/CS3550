-- .mode box
-- .output Q3_output.csv
-- with track_classification (TrackId,name,classification) as (
select TrackId,Name,Milliseconds,
case 
when Milliseconds<=60000 then 'short'
when Milliseconds>=300000 then 'long'
else 'medium'
end classification
from tracks;
-- select * from track_classification;

-- with track_classification (TrackId,name,classification) as (
select classification, count(classification) as count
from (select TrackId,Name,Milliseconds,
case 
when Milliseconds<=60000 then 'short'
when Milliseconds>=300000 then 'long'
else 'medium'
end classification
from tracks)
-- select classification,count(classification) as count
-- from track_classification
group by classification;
