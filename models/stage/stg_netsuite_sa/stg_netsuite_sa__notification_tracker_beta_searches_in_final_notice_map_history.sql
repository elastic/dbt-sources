
with source as (

    select * from {{ source('raw_netsuite_sa', 'notification_tracker_beta_searches_in_final_notice_map_history') }}

),

renamed as (

    select
        customization_id,
        notification_tracker_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed