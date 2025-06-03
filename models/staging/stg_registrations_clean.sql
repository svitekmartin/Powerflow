{{ config(materialized='view')}}


SELECT * from {{ source('powerflow','registrations_raw')}}
--SELECT * from powerflow.public.registrations_raw
where user_id is not null