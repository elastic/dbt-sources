
with source as (

    select * from {{ source('raw_salesforce', 'sbqq_install_processor_log_c_history') }}

),

renamed as (

    select
        partitiontime,
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
        sbqq_method_name_c,
        sbqq_time_c,
        sbqq_version_c,
        system_modstamp

    from source

)

select * from renamed