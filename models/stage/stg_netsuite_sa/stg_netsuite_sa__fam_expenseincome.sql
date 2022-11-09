
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_expenseincome') }}

),

renamed as (

    select
        fam_expenseincome_id,
        _fivetran_deleted,
        _fivetran_synced,
        asset_name_id,
        date_created,
        date_deleted,
        expenseincome_amount,
        fam_expenseincome_extid,
        is_inactive,
        last_modified_date,
        memo,
        parent_id,
        transaction_reference_id

    from source

)

select * from renamed
