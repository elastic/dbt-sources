
with source as (

    select * from {{ source('raw_salesforce', 'external_event_mapping') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        end_date,
        event_id,
        external_id,
        is_deleted,
        is_recurring,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        start_date,
        system_modstamp

    from source

)

select * from renamed
