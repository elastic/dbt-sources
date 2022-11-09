
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_checklist_item_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_business_process_c,
        fstr_checklist_c,
        fstr_completed_by_c,
        fstr_completed_date_c,
        fstr_is_complete_c,
        fstr_order_c,
        fstr_pce_step_checklist_item_c,
        fstr_process_task_c,
        fstr_summary_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
