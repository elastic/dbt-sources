
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_log_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_exception_description_c,
        jbcxm_log_date_time_c,
        jbcxm_source_data_c,
        jbcxm_source_object_c,
        jbcxm_type_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
