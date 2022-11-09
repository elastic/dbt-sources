
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_tracking_numbers_history') }}

),

renamed as (

    select
        fivetran_index,
        transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        tracking_number,
        partition_date

    from source

)

select * from renamed
