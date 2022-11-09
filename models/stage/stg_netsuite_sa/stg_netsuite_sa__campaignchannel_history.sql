
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaignchannel_history') }}

),

renamed as (

    select
        campaign_channel_id,
        _fivetran_synced,
        campaign_channel_extid,
        date_last_modified,
        description,
        event_type_id,
        is_inactive,
        name,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
