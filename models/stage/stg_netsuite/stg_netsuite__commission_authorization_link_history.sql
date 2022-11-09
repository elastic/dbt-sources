
with source as (

    select * from {{ source('raw_netsuite', 'commission_authorization_link_history') }}

),

renamed as (

    select
        authorized_amount,
        calc_type,
        commission_transaction_id,
        commission_transaction_line_id,
        entity_id,
        schedule_id,
        transaction_id

    from source

)

select * from renamed
