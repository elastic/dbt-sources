
with source as (

    select * from {{ source('raw_netsuite', 'fam_expenseincome_history') }}

),

renamed as (

    select
        asset_name_id,
        date_created,
        expenseincome_amount,
        fam_expenseincome_extid,
        fam_expenseincome_id,
        is_inactive,
        last_modified_date,
        memo,
        parent_id,
        transaction_reference_id

    from source

)

select * from renamed
