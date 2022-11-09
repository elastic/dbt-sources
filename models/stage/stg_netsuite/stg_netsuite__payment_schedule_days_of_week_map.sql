
with source as (

    select * from {{ source('raw_netsuite', 'payment_schedule_days_of_week_map') }}

),

renamed as (

    select
        day_of_week_id,
        payment_schedule_id

    from source

)

select * from renamed
