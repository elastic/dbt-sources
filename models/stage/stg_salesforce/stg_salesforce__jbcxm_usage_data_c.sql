
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_usage_data_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_account_c,
        jbcxm_date_c,
        jbcxm_external_id_c,
        jbcxm_instance_id_c,
        jbcxm_instance_name_c,
        jbcxm_processed_c,
        jbcxm_user_c,
        jbcxm_utilization_c,
        jbcxm_week_label_c,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
