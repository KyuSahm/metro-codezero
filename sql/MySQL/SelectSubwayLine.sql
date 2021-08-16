-- 2 호선 노선도 순서
select a.seq, a.line line, a.subline subline, a.station_id id, a.prev_station_id prev_id, 
			 a.next_station_id next_id, a.external_code external_code, b.ename ename, b.phone phone, b.address address 
  from subway_line a, station b 
 where a.line = 2
   and a.subline = 0 
   and a.station_id = b.id
 order by a.line, a.subline, a.seq;  