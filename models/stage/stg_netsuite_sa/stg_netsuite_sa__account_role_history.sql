
with source as (

    select * from {{ source('raw_netsuite_sa', 'account_role_history') }}

),

renamed as (

    select
        account_role_id,
        _fivetran_deleted,
        _fivetran_synced,
        account_role_extid,
        account_role_name,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        production_id,
        sandbox_id,
        partition_date

    from source

)

select * from renamed
