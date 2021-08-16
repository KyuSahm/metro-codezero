-- next 2 train to arrive
select TIME_TO_SEC(TIMEDIFF(STR_TO_DATE(concat(DATE_FORMAT(NOW(), '%Y-%m-%d '), b.arrivetime), '%Y-%m-%d %H:%i:%s'), NOW())) arrive_sec,
       b.direction, b.train_id, b.dest_station_id, ifnull(c.updated, 'n') updated,
       ifnull(c.crowdedness1, 2) crowdedness1, ifnull(c.crowdedness2, 2) crowdedness2, ifnull(c.crowdedness3, 2) crowdedness3, ifnull(c.crowdedness4, 2) crowdedness4,
       ifnull(c.crowdedness5, 2) crowdedness5, ifnull(c.crowdedness6, 2) crowdedness6, ifnull(c.crowdedness7, 2) crowdedness7, ifnull(c.crowdedness8, 2) crowdedness8,
       ifnull(c.crowdedness9, 2) crowdedness9, ifnull(c.crowdedness10, 2) crowdedness10
  from (select a.* 
          from station_timetable a
         where line = 2
           and subline = 0
           and station_id = '사당'
           and direction = 'ccw'
           and arrivetime >= DATE_FORMAT(NOW(), '%H:%i:%s')
         order by arrivetime asc
         LIMIT 2) b
		left outer join train c
     on (b.line = c.line and b.subline = c.subline and b.train_id = c.id)