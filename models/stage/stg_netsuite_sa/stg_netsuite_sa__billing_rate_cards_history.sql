
with source as (

    select * from {{ source('raw_netsuite_sa', 'billing_rate_cards_history') }}

),

renamed as (

    select
        billing_rate_card_id,
        _fivetran_synced,
        billing_rate_card_extid,
        date_created,
        date_last_modified,
        is_inactive,
        name,
        customer_id,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
