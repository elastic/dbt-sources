
with source as (

    select * from {{ source('raw_salesforce', 'channel_program_level_history') }}

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
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        program_id,
        rank,
        system_modstamp

    from source

)

select * from renamed