
with source as (

    select * from {{ source('raw_salesforce', 'mkto_si_value_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        mkto_si_boolean_c,
        mkto_si_currency_c,
        mkto_si_date_c,
        mkto_si_date_time_c,
        mkto_si_double_c,
        mkto_si_email_c,
        mkto_si_percent_c,
        mkto_si_phone_c,
        mkto_si_string_c,
        mkto_si_text_area_c,
        mkto_si_url_c,
        mkto_si_value_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
