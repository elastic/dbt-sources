
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_step_checklist_item_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_order_c,
        fstr_step_c,
        fstr_summary_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
