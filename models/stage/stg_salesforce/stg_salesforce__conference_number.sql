
with source as (

    select * from {{ source('raw_salesforce', 'conference_number') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        access_code,
        created_by_id,
        created_date,
        external_event_id,
        is_deleted,
        label,
        last_modified_by_id,
        last_modified_date,
        name,
        number,
        system_modstamp,
        vendor

    from source

)

select * from renamed
