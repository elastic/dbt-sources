
with source as (

    select * from {{ source('raw_netsuite_sa', 'payment_methods') }}

),

renamed as (

    select
        payment_method_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        default_account_id,
        external_0,
        isinactive,
        name,
        payment_method_extid,
        payment_method_tags

    from source

)

select * from renamed
