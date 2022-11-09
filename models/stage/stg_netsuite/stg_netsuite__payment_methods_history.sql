
with source as (

    select * from {{ source('raw_netsuite', 'payment_methods_history') }}

),

renamed as (

    select
        date_last_modified,
        default_account_id,
        external_0,
        isinactive,
        name,
        payment_method_extid,
        payment_method_id,
        payment_method_tags

    from source

)

select * from renamed
