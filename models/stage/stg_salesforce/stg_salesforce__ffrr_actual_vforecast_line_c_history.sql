
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_actual_vforecast_line_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_actual_template_c,
        ffrr_actual_value_c,
        ffrr_actual_value_internal_c,
        ffrr_category_c,
        ffrr_currency_c,
        ffrr_exp_expense_c,
        ffrr_exp_milestone_c,
        ffrr_exp_project_c,
        ffrr_exp_timecard_split_c,
        ffrr_forecast_template_c,
        ffrr_forecast_value_c,
        ffrr_forecast_value_internal_c,
        ffrr_level_2_record_id_c,
        ffrr_level_2_record_name_c,
        ffrr_level_3_record_id_c,
        ffrr_level_3_record_name_c,
        ffrr_level_4_record_id_c,
        ffrr_level_4_record_name_c,
        ffrr_primary_record_id_c,
        ffrr_primary_record_name_c,
        ffrr_recognition_period_c,
        ffrr_recognition_year_c,
        ffrr_record_id_c,
        ffrr_type_c,
        ffrr_uniqueness_c,
        id,
        is_deleted,
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
