
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_template_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_calculation_type_c,
        ffrr_cost_basis_c,
        ffrr_forecast_schedule_definition_c,
        ffrr_rev_rec_type_c,
        ffrr_revenue_basis_c,
        ffrr_revenue_source_c,
        ffrr_settings_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp,
        ffrr_settings_type_c,
        ffrr_use_in_revenue_contract_c,
        ffrr_value_type_c

    from source

)

select * from renamed
