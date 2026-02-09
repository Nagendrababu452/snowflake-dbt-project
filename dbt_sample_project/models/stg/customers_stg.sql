with source as (
select * from {{ source('src', 'raw_customers') }}
)
,
changes as (
select 
    id as customer_id,
    name as customer_name
from source
)

select * from changes