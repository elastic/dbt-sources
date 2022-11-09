
with source as (

    select * from {{ source('raw_netsuite_sa', 'change__approval_policy_sod_preliminary_approver_map') }}

),

renamed as (

    select
        change__approval_policy_id,
        employee_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
