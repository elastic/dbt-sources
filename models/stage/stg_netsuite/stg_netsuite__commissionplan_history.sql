
with source as (

    select * from {{ source('raw_netsuite', 'commissionplan_history') }}

),

renamed as (

    select
        commission_plan,
        commission_plan_id,
        date_created,
        date_last_modified,
        date_modified,
        description,
        is_inactive

    from source

)

select * from renamed
