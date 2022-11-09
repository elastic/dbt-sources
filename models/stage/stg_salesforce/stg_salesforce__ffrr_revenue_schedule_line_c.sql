
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_schedule_line_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_engagement_c,
        ffrr_performance_obligation_c,
        ffrr_period_end_c,
        ffrr_period_start_c,
        ffrr_revenue_as_currency_c,
        ffrr_revenue_c,
        ffrr_revenue_contract_c,
        ffrr_revenue_schedule_c,
        ffrr_schedule_line_number_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
