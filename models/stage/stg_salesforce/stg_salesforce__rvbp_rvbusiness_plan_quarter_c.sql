
with source as (

    select * from {{ source('raw_salesforce', 'rvbp_rvbusiness_plan_quarter_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        rvbp_end_date_c,
        rvbp_number_c,
        rvbp_period_id_c,
        rvbp_rvbusiness_plan_c,
        rvbp_start_date_c,
        system_modstamp,
        rvbp_rvaccount_id_c

    from source

)

select * from renamed
