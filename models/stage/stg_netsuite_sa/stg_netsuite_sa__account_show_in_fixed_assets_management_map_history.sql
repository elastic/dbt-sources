
with source as (

    select * from {{ source('raw_netsuite_sa', 'account_show_in_fixed_assets_management_map_history') }}

),

renamed as (

    select
        account_id,
        fam_used_accounts_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
