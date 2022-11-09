
with source as (

    select * from {{ source('raw_netsuite', 'commissionschedule') }}

),

renamed as (

    select
        author,
        category_0,
        date_created,
        description,
        is_inactive,
        manager_,
        name,
        period_type,
        schedule_id,
        target_amount,
        type_id

    from source

)

select * from renamed
