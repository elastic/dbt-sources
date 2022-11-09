
with source as (

    select * from {{ source('raw_salesforce', 'lean_data_history_log_c') }}

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
        lean_data_additional_data_c,
        lean_data_after_c,
        lean_data_before_c,
        lean_data_context_c,
        lean_data_user_action_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
