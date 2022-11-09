
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaign_subscription_statuses_history') }}

),

renamed as (

    select
        entity_id,
        subscription_id,
        _fivetran_synced,
        date_last_modified,
        last_modified_date,
        unsubscribed,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
