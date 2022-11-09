
with source as (

    select * from {{ source('raw_netsuite', 'billing_schedule_descriptions') }}

),

renamed as (

    select
        billing_schedule_id,
        billing_schedule_type,
        frequency,
        name,
        recurrence_count

    from source

)

select * from renamed
