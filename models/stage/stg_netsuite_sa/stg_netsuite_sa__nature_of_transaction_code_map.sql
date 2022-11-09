
with source as (

    select * from {{ source('raw_netsuite_sa', 'nature_of_transaction_code_map') }}

),

renamed as (

    select
        nature_of_transaction_codes_id,
        nature_of_transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
