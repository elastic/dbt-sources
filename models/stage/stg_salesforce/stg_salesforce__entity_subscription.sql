
with source as (

    select * from {{ source('raw_salesforce', 'entity_subscription') }}

),

renamed as (

    select
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
