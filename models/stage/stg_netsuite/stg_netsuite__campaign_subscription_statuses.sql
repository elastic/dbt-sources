
with source as (

    select * from {{ source('raw_netsuite', 'campaign_subscription_statuses') }}

),

renamed as (

    select
        date_last_modified,
        entity_id,
        last_modified_date,
        subscription_id,
        unsubscribed

    from source

)

select * from renamed
