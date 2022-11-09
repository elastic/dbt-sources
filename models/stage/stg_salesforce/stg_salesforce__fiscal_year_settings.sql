
with source as (

    select * from {{ source('raw_salesforce', 'fiscal_year_settings') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        description,
        end_date,
        is_standard_year,
        name,
        period_id,
        period_label_scheme,
        period_prefix,
        quarter_label_scheme,
        quarter_prefix,
        start_date,
        system_modstamp,
        week_label_scheme,
        week_start_day,
        year_type

    from source

)

select * from renamed
