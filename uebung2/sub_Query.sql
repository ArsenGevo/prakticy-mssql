select distinct t.genre_id
from interpret i
join titel t
on t.interpret_id = i.i_id
where i.name = 'Coldplay';



-- select genre from genre
-- where genre.g_id = 2;

-- Mit subselect:
select distinct i.name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id =
(
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i. name = 'Coldplay'
);


-- Mit subselect:
select distinct i.name
from interpret i
join titel t on t.interpret_id = i.i_id
where t.genre_id =
(
select distinct t.genre_id
from interpret i
join titel t on t.interpret_id = i.i_id
where i. name = 'Coldplay'
);
