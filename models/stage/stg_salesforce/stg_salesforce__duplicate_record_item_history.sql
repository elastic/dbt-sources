
with source as (

    select * from {{ source('raw_salesforce', 'duplicate_record_item_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        duplicate_record_set_id,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        record_id,
        system_modstamp

    from source

)

select * from renamed
