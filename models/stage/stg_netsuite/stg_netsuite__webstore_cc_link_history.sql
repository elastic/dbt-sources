
with source as (

    select * from {{ source('raw_netsuite', 'webstore_cc_link_history') }}

),

renamed as (

    select
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        sub_customer_cc_id,
        sub_customer_id,
        sub_subsidiary_id,
        webstore_cc_id,
        webstore_cc_link_extid,
        webstore_cc_link_id,
        webstore_customer_id

    from source

)

select * from renamed
