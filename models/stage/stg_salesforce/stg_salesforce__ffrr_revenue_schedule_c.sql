
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_schedule_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_account_c,
        ffrr_currency_c,
        ffrr_end_date_c,
        ffrr_performance_obligation_c,
        ffrr_recognition_method_c,
        ffrr_schedule_number_c,
        ffrr_source_id_c,
        ffrr_source_type_c,
        ffrr_start_date_c,
        ffrr_total_revenue_c,
        ffrr_total_scheduled_revenue_c,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
