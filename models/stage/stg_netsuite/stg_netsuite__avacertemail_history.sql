
with source as (

    select * from {{ source('raw_netsuite', 'avacertemail_history') }}

),

renamed as (

    select
        address_id,
        avacertemail_extid,
        avacertemail_id,
        customer_id,
        customer_id_0,
        date_created,
        email,
        is_inactive,
        last_modified_date,
        parent_id,
        partner_id

    from source

)

select * from renamed
