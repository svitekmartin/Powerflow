{{
    config(
        materialized='view'
    )
}}

select *
from {{ source('powerflow', 'transactions') }}