
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_bin_numbers_history') }}

),

renamed as (

    select
        fivetran_index,
        transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        bin_number,
        date_deleted,
        quantity,
        transaction_line,
        partition_date

    from source

)

select * from renamed
