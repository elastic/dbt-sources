
with source as (

    select * from {{ source('raw_netsuite', 'fam_asset_transfer_accounts_history') }}

),

renamed as (

    select
        date_created,
        destination_subsidiary_id,
        destination_transfer_accoun_id,
        fam_asset_transfer_accounts_ex,
        fam_asset_transfer_accounts_id,
        is_inactive,
        last_modified_date,
        origin_subsidiary_id,
        origin_transfer_account_id,
        parent_id

    from source

)

select * from renamed
