
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaignresponse_history') }}

),

renamed as (

    select
        campaign_response_id,
        _fivetran_deleted,
        _fivetran_synced,
        campaign_event_id,
        campaign_response_extid,
        contact_id,
        date_deleted,
        date_sent,
        entity_id,
        response_id,
        partition_date

    from source

)

select * from renamed
