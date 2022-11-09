
with source as (

    select * from {{ source('raw_netsuite', 'change__approval_policy_sod_preliminary_approver_map_history') }}

),

renamed as (

    select
        change__approval_policy_id,
        employee_id

    from source

)

select * from renamed
