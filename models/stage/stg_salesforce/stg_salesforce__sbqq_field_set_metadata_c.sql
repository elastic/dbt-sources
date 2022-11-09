
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_field_set_metadata_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        sbqq_field_set_c,
        sbqq_object_type_c,
        system_modstamp,
        sbqq_field_set_validation_c,
        sbqq_default_c

    from source

)

select * from renamed
