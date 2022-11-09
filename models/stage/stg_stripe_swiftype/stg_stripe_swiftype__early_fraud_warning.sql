
with source as (

    select * from {{ source('raw_stripe_swiftype', 'early_fraud_warning') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        actionable,
        charge_id,
        created,
        fraud_type,
        livemode

    from source

)

select * from renamed
