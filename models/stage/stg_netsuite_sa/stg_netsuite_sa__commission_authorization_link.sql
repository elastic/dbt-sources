
with source as (

    select * from {{ source('raw_netsuite_sa', 'commission_authorization_link') }}

),

renamed as (

    select
        commission_transaction_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        authorized_amount,
        calc_type,
        commission_transaction_line_id,
        date_deleted,
        entity_id,
        schedule_id,
        transaction_id

    from source

)

select * from renamed
