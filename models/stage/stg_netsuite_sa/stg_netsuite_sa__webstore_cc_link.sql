
with source as (

    select * from {{ source('raw_netsuite_sa', 'webstore_cc_link') }}

),

renamed as (

    select
        webstore_cc_link_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        sub_customer_cc_id,
        sub_customer_id,
        sub_subsidiary_id,
        webstore_cc_id,
        webstore_cc_link_extid,
        webstore_customer_id

    from source

)

select * from renamed
