
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_audit_log_c_history') }}

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
        learndot_completion_time_c,
        learndot_customer_c,
        learndot_errors_c,
        learndot_result_c,
        learndot_scripts_version_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
