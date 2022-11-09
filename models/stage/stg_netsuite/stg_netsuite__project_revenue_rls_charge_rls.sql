
with source as (

    select * from {{ source('raw_netsuite', 'project_revenue_rls_charge_rls') }}

),

renamed as (

    select
        actual_amount,
        charge_rule_id,
        date_amount_modified,
        forecast_amount,
        project_revenue_rule_id

    from source

)

select * from renamed
