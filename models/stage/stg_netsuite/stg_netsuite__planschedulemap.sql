
with source as (

    select * from {{ source('raw_netsuite', 'planschedulemap') }}

),

renamed as (

    select
        date_created,
        plan_id,
        schedule_id

    from source

)

select * from renamed
