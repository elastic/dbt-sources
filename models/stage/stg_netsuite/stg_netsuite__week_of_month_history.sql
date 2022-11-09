
with source as (

    select * from {{ source('raw_netsuite', 'week_of_month_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        week_of_month_extid

    from source

)

select * from renamed