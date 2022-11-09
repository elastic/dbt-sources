
with source as (

    select * from {{ source('raw_salesforce', 'prompt_action_history') }}

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
        last_display_date,
        last_modified_by_id,
        last_modified_date,
        last_result,
        last_result_date,
        name,
        owner_id,
        prompt_version_id,
        step_count,
        step_number,
        system_modstamp,
        times_action_taken,
        times_dismissed,
        times_displayed,
        user_id

    from source

)

select * from renamed