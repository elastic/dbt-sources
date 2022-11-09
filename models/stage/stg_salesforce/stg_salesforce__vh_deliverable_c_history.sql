
with source as (

    select * from {{ source('raw_salesforce', 'vh_deliverable_c_history') }}

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
        vh_completed_date_c,
        vh_completed_presales_stage_c,
        vh_completed_stage_c,
        vh_deliverable_flag_c,
        vh_description_c,
        vh_due_date_c,
        vh_hours_c,
        vh_name_c,
        vh_opportunity_c,
        vh_parent_tmr_c,
        vh_scheduled_date_c,
        vh_scheduled_to_completed_c,
        vh_started_date_c,
        vh_started_to_completed_c,
        vh_status_c,
        vh_type_c,
        deliverable_created_by_workday_id_c,
        deliverable_owner_workday_id_c

    from source

)

select * from renamed
