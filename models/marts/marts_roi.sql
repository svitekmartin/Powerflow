{{ config(materialized='table')}}

select l.user_id, lifetime, cumulative_daily_rev, channel, campaign_id, 
attribution_cost, round(DIV0(cumulative_daily_rev, attribution_cost)*100,2)  as roi_pct
from {{ ref("int_ltv") }} as l
INNER JOIN {{ ref("int_users_with_attribution") }} as a
on l.user_id=a.user_id