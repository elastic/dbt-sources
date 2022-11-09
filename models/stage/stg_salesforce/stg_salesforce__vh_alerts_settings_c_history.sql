
with source as (

    select * from {{ source('raw_salesforce', 'vh_alerts_settings_c_history') }}

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
        setup_owner_id,
        system_modstamp,
        vh_deal_revival_c,
        vh_deliverable_assignment_c,
        vh_hero_activity_assignment_c,
        vh_low_hero_activities_c,
        vh_low_opportunity_gaps_c,
        vh_new_product_gap_c,
        vh_no_hero_activity_hours_c,
        vh_opportunity_assigned_c,
        vh_product_gap_update_c,
        vh_team_member_request_created_c

    from source

)

select * from renamed
