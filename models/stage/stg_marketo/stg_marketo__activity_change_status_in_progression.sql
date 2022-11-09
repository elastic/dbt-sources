
with source as (

    select * from {{ source('raw_marketo', 'activity_change_status_in_progression') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        acquired_by,
        activity_date,
        activity_type_id,
        campaign_id,
        lead_id,
        new_status,
        new_status_id,
        old_status,
        old_status_id,
        primary_attribute_value,
        primary_attribute_value_id,
        reason,
        success,
        campaign,
        program_member_id,
        reached_success_date,
        status_reason,
        registration_code,
        webinar_url,
        old_statuss,
        old_sttatus_id,
        action_result

    from source

)

select * from renamed
