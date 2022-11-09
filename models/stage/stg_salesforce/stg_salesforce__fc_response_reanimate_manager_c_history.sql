
with source as (

    select * from {{ source('raw_salesforce', 'fc_response_reanimate_manager_c_history') }}

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
        last_x_days_responded_for_reopen_c,
        name,
        response_active_status_value_c,
        response_status_values_to_consider_c,
        setup_owner_id,
        system_modstamp,
        top_of_animate_hierarchy_c

    from source

)

select * from renamed
