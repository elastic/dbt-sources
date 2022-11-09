
with source as (

    select * from {{ source('raw_salesforce', 'pse_timecard_api_settings_c_history') }}

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
        pse_earnings_code_assignment_c,
        pse_earnings_code_project_c,
        pse_exclude_project_type_from_post_response_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
