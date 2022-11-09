
with source as (

    select * from {{ source('raw_salesforce', 'field_mapping_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        component_c,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        is_literal_c,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        source_field_c,
        system_modstamp,
        target_field_c

    from source

)

select * from renamed
