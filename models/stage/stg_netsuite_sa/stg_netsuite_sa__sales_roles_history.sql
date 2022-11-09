
with source as (

    select * from {{ source('raw_netsuite_sa', 'sales_roles_history') }}

),

renamed as (

    select
        sales_role_id,
        _fivetran_synced,
        date_last_modified,
        description,
        is_inactive,
        is_sales_rep_role,
        name,
        sales_role_extid,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
