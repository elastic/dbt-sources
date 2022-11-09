
with source as (

    select * from {{ source('raw_salesforce', 'macro_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        description,
        id,
        is_aloha_supported,
        is_deleted,
        is_lightning_supported,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        starting_context,
        system_modstamp

    from source

)

select * from renamed
