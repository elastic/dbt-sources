
with source as (

    select * from {{ source('raw_salesforce', 'fstr_process_composer_date_settings_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        fstr_current_business_day_c,
        fstr_first_friday_of_the_month_c,
        fstr_first_monday_of_the_month_c,
        fstr_first_saturday_of_the_month_c,
        fstr_first_sunday_of_the_month_c,
        fstr_first_thursday_of_the_month_c,
        fstr_first_tuesday_of_the_month_c,
        fstr_first_wednesday_of_the_month_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        setup_owner_id,
        system_modstamp

    from source

)

select * from renamed
