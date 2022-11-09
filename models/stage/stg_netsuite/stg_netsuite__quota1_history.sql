
with source as (

    select * from {{ source('raw_netsuite', 'quota1_history') }}

),

renamed as (

    select
        amount,
        class_0,
        date_0,
        department,
        entity_id,
        is_alt_sales,
        item,
        location_0,
        period,
        quarterly_amount,
        quota_id,
        subsidiary,
        team_quota

    from source

)

select * from renamed
