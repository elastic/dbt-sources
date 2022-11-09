
with source as (

    select * from {{ source('raw_netsuite_sa', 'nature_of_transaction_code_map_history') }}

),

renamed as (

    select
        nature_of_transaction_codes_id,
        nature_of_transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
