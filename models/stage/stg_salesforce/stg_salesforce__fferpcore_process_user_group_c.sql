
with source as (

    select * from {{ source('raw_salesforce', 'fferpcore_process_user_group_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fferpcore_process_run_c,
        fferpcore_total_number_of_errors_c,
        fferpcore_total_number_of_pending_c,
        fferpcore_total_number_of_successes_c,
        fferpcore_unique_identifier_c,
        fferpcore_user_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
