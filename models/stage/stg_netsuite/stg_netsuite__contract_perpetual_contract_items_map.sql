
with source as (

    select * from {{ source('raw_netsuite', 'contract_perpetual_contract_items_map') }}

),

renamed as (

    select
        contract_id,
        contract_item_id

    from source

)

select * from renamed
