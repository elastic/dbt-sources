
with source as (

    select * from {{ source('raw_salesforce', 'sharing_record_collection_item') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        collection_id,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        is_deleted,
        item_id,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
