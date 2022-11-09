
with source as (

    select * from {{ source('raw_salesforce', 'vh_hero_activity_c_history') }}

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
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        vh_account_c,
        vh_created_stage_c,
        vh_date_c,
        vh_default_hours_c,
        vh_deliverable_c,
        vh_description_c,
        vh_focus_c,
        vh_hero_activity_flag_c,
        vh_hours_c,
        vh_opportunity_c,
        vh_presales_stage_c,
        vh_source_c,
        vh_status_c,
        vh_type_c,
        hero_activity_created_by_workday_id_c,
        hero_activity_owner_workday_id_c

    from source

)

select * from renamed
