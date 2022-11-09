
with source as (

    select * from {{ source('raw_netsuite', 'renewal_pricing_models_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        renewal_pricing_models_extid

    from source

)

select * from renamed
