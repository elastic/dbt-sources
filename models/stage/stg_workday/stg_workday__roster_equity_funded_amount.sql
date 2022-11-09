
with source as (

    select * from {{ source('raw_workday', 'roster_equity_funded_amount') }}

),

renamed as (

    select
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        employee,
        equity_grant_amount,
        equity_plans_group,
        xmlname_of_funded_amount

    from source

)

select * from renamed
