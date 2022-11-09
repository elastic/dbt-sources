
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_import_format_c') }}

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
        sbqq_active_c,
        sbqq_import_format_name_c,
        sbqq_target_object_c,
        system_modstamp,
        sbqq_unique_key_count_c

    from source

)

select * from renamed
