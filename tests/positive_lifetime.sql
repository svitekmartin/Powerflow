select * 
from {{ ref("int_ltv") }} as l 
where lifetime < 0
