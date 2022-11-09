
with source as (

    select * from {{ source('raw_stripe_swiftype', 'issuing_dispute') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        amount,
        created,
        currency,
        evidence_fraudlent_dispute_explanation,
        evidence_fraudlent_uncategorized_file,
        evidence_other_dispute_explanation,
        evidence_other_uncategorized_file,
        livemode,
        reason,
        status,
        metadata,
        connected_account_id

    from source

)

select * from renamed
