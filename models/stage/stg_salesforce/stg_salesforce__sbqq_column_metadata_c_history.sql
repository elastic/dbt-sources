
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_column_metadata_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        sbqq_field_column_size_c,
        sbqq_field_name_c,
        sbqq_field_set_metadata_c,
        system_modstamp,
        sbqq_column_validation_c

    from source

)

select * from renamed
