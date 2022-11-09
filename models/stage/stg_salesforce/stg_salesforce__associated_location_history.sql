
with source as (

    select * from {{ source('raw_salesforce', 'associated_location_history') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        associated_location_id,
        created_by_id,
        created_date,
        data_type,
        field,
        is_deleted,
        new_value,
        old_value,
        active_from,
        active_to,
        associated_location_number,
        currency_iso_code,
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
