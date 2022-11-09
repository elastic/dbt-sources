
with source as (

    select * from {{ source('raw_salesforce', 'quick_text_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        category,
        channel,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        message,
        name,
        owner_id,
        system_modstamp,
        is_insertable,
        source_type

    from source

)

select * from renamed
