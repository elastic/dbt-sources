
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaign_subscriptions_history') }}

),

renamed as (

    select
        campaignsubscription_id,
        _fivetran_synced,
        campaignsubscription_extid,
        date_last_modified,
        description,
        isinactive,
        name,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
