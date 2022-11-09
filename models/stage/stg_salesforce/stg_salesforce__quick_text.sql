
with source as (

    select * from {{ source('raw_salesforce', 'quick_text') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        category,
        channel,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        message,
        name,
        owner_id,
        system_modstamp,
        source_type,
        is_insertable

    from source

)

select * from renamed
