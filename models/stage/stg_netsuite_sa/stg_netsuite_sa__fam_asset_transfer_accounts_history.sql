
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_asset_transfer_accounts_history') }}

),

renamed as (

    select
        fam_asset_transfer_accounts_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        destination_subsidiary_id,
        destination_transfer_accoun_id,
        fam_asset_transfer_accounts_ex,
        is_inactive,
        last_modified_date,
        origin_subsidiary_id,
        origin_transfer_account_id,
        parent_id,
        partition_date

    from source

)

select * from renamed
