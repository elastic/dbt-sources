
with source as (

    select * from {{ source('raw_netsuite', 'account_role') }}

),

renamed as (

    select
        account_role_extid,
        account_role_id,
        account_role_name,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        production_id,
        sandbox_id

    from source

)

select * from renamed
