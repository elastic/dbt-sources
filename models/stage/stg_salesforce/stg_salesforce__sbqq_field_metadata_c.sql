
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_field_metadata_c') }}

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
        name,
        sbqq_field_name_c,
        sbqq_object_name_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
