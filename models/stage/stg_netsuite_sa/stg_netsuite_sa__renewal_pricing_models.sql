
with source as (

    select * from {{ source('raw_netsuite_sa', 'renewal_pricing_models') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        renewal_pricing_models_extid

    from source

)

select * from renamed
