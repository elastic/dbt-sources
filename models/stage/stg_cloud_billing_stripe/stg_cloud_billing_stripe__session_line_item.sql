
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'session_line_item') }}

),

renamed as (

    select
        id,
        session_id,
        _fivetran_synced,
        amount_subtotal,
        amount_total,
        currency,
        description,
        object,
        price,
        quantity,
        taxes

    from source

)

select * from renamed
