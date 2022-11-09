
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_integration_rule_action_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_action_message_c,
        ffirule_action_name_c,
        ffirule_feed_link_message_c,
        ffirule_feed_link_message_target_field_c,
        ffirule_feed_message_c,
        ffirule_feed_message_target_field_c,
        ffirule_integration_rule_c,
        ffirule_visual_force_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
