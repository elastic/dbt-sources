
with source as (

    select * from {{ source('raw_netsuite', 'one_risk_strategy_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        one_risk_strategy_extid

    from source

)

select * from renamed
