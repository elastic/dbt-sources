
with source as (

    select * from {{ source('raw_salesforce', 'associated_location') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        active_from,
        active_to,
        associated_location_number,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        location_id,
        parent_record_id,
        system_modstamp,
        type

    from source

)

select * from renamed
