
with source as (

    select * from {{ source('raw_salesforce', 'entity_subscription_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        is_deleted,
        network_id,
        parent_id,
        subscriber_id

    from source

)

select * from renamed
