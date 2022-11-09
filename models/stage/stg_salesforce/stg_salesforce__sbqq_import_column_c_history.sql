
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_import_column_c_history') }}

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
        name,
        sbqq_column_index_c,
        sbqq_field_name_c,
        sbqq_import_format_c,
        sbqq_key_c,
        system_modstamp

    from source

)

select * from renamed
