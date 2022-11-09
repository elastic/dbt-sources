
with source as (

    select * from {{ source('raw_salesforce', 'fstr_pce_step_approval_item_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_approval_status_c,
        fstr_approver_c,
        fstr_rejection_status_c,
        fstr_step_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
