
with source as (

    select * from {{ source('raw_netsuite_sa', 'avacertemail') }}

),

renamed as (

    select
        avacertemail_id,
        _fivetran_deleted,
        _fivetran_synced,
        address_id,
        avacertemail_extid,
        customer_id,
        customer_id_0,
        date_created,
        date_deleted,
        email,
        is_inactive,
        last_modified_date,
        parent_id,
        partner_id

    from source

)

select * from renamed
