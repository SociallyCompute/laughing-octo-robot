
----behavior create, reply, read

select event_author_id, count(*) from CSCL_08Events
where event_action = "jforum.new" and event_author_id = object_creator
group by event_author_id;

select event_author_id, count(*) from CSCL_08Events
where event_action = "jforum.new" and event_author_id != object_creator
group by event_author_id;

select event_author_id, count(*) from CSCL_08Events
where event_action = "jforum.read" 
group by event_author_id;

----temporal average post time
Select event_author_id,  sum(normalized_timeTentileWeighted_event_count) 
from CSCL_Module_ALL_Normalized_Distances
group by event_author_id;

Select event_author_id,  sum(normalized_total_events) 
from CSCL_Module_ALL_Normalized_Distances
group by event_author_id;

----structural & connections
select event_author_id, count(distinct object_creator) from CSCL_08Events
where event_author_id != object_creator
group by event_author_id; 

select * from CSCL_08Events;
select * from CSCL_Module_ALL_Normalized_Distances;

