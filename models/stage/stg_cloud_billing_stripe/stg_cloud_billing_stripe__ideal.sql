
with source as (

    select * from {{ source('raw_cloud_billing_stripe', 'ideal') }}

),

renamed as (

    select
        payment_method_id,
        _fivetran_synced,
        bank,
        bic

    from source

)

select * from renamed
