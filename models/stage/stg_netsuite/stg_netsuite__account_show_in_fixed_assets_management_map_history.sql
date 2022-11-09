
with source as (

    select * from {{ source('raw_netsuite', 'account_show_in_fixed_assets_management_map_history') }}

),

renamed as (

    select
        account_id,
        fam_used_accounts_id

    from source

)

select * from renamed
