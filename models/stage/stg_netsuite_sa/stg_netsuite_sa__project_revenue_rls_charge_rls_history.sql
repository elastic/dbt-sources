
with source as (

    select * from {{ source('raw_netsuite_sa', 'project_revenue_rls_charge_rls_history') }}

),

renamed as (

    select
        charge_rule_id,
        project_revenue_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        actual_amount,
        date_amount_modified,
        date_deleted,
        forecast_amount,
        partition_date

    from source

)

select * from renamed
