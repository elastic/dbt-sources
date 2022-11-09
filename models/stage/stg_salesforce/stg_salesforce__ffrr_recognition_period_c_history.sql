
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_recognition_period_c_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_custom_name_c,
        ffrr_end_date_c,
        ffrr_number_of_weeks_c,
        ffrr_period_group_c,
        ffrr_period_number_c,
        ffrr_recognition_year_c,
        ffrr_start_date_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp

    from source

)

select * from renamed
