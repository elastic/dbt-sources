
with source as (

    select * from {{ source('raw_salesforce', 'pse_team_settings_c_history') }}

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
        pse_enable_send_notifications_c,
        pse_fill_schedule_tooltip_c,
        pse_schedule_email_template_name_c,
        pse_swap_email_template_name_c,
        pse_team_member_permission_level_c,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
