
with source as (

    select * from {{ source('raw_salesforce', 'pse_billing_queue_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        pse_budget_c,
        pse_effective_date_c,
        pse_expense_c,
        pse_milestone_c,
        pse_miscellaneous_adjustment_c,
        pse_project_c,
        pse_timecard_c,
        pse_transaction_c,
        system_modstamp,
        pse_business_record_c

    from source

)

select * from renamed
