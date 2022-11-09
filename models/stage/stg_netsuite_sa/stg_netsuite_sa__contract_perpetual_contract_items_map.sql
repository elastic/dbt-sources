
with source as (

    select * from {{ source('raw_netsuite_sa', 'contract_perpetual_contract_items_map') }}

),

renamed as (

    select
        contract_id,
        contract_item_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
