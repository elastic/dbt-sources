
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_recognition_transaction_summary_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_c,
        ffrr_account_type_c,
        ffrr_amount_amortized_c,
        ffrr_amount_recognized_c,
        ffrr_cost_center_c,
        ffrr_grouping_field_key_c,
        ffrr_grouping_key_c,
        ffrr_internal_amortized_amount_c,
        ffrr_internal_amount_c,
        ffrr_journal_amortized_amount_c,
        ffrr_journal_amount_c,
        ffrr_revenue_recognition_transaction_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
