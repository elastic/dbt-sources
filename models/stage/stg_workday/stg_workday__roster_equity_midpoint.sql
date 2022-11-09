
with source as (

    select * from {{ source('raw_workday', 'roster_equity_midpoint') }}

),

renamed as (

    select
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        employee,
        equity_grant_amount,
        equity_range_midpoint,
        xmlname_of_equity_range_midpoint

    from source

)

select * from renamed
