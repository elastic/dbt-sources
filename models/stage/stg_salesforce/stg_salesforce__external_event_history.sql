
with source as (

    select * from {{ source('raw_salesforce', 'external_event_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        external_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        location,
        name,
        notes,
        system_modstamp,
        time,
        title

    from source

)

select * from renamed
