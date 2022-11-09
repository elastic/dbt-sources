
with source as (

    select * from {{ source('raw_netsuite_sa', 'transactions_with_nondeductible_tax_map') }}

),

renamed as (

    select
        transaction2_id,
        transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
