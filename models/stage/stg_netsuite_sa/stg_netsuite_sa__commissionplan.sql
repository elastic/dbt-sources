
with source as (

    select * from {{ source('raw_netsuite_sa', 'commissionplan') }}

),

renamed as (

    select
        commission_plan_id,
        _fivetran_deleted,
        _fivetran_synced,
        commission_plan,
        date_created,
        date_deleted,
        date_last_modified,
        date_modified,
        description,
        is_inactive

    from source

)

select * from renamed
