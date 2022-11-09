
with source as (

    select * from {{ source('raw_salesforce', 'case_milestone_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        business_hours_id,
        case_id,
        completion_date,
        created_by_id,
        created_date,
        elapsed_time_in_days,
        elapsed_time_in_hrs,
        elapsed_time_in_mins,
        is_completed,
        is_deleted,
        is_violated,
        last_modified_by_id,
        last_modified_date,
        milestone_type_id,
        start_date,
        system_modstamp,
        target_date,
        target_response_in_days,
        target_response_in_hrs,
        target_response_in_mins,
        time_remaining_in_mins,
        time_since_target_in_mins,
        _fivetran_deleted,
        time_remaining_in_days,
        time_remaining_in_hrs,
        time_since_target_in_days,
        time_since_target_in_hrs

    from source

)

select * from renamed
