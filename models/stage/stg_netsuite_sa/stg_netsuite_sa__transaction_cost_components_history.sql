
with source as (

    select * from {{ source('raw_netsuite_sa', 'transaction_cost_components_history') }}

),

renamed as (

    select
        fivetran_index,
        transaction_id,
        _fivetran_deleted,
        _fivetran_synced,
        amount,
        cost_category,
        date_deleted,
        item_id,
        quantity,
        standard_cost,
        transaction_line,
        partition_date

    from source

)

select * from renamed
