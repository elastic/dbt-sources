
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaignevent_history') }}

),

renamed as (

    select
        campaign_event_id,
        _fivetran_synced,
        campaign_event_extid,
        campaign_id,
        channel_id,
        cost_0,
        date_scheduled,
        date_sent,
        group_id,
        number_clicked_thru,
        number_received,
        number_responded,
        number_sent,
        number_unsubscribed,
        promotion_code_id,
        status_id,
        subscription_id,
        template_id,
        test_cell_id,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
