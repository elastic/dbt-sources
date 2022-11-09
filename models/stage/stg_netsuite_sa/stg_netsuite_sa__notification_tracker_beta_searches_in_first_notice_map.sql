
with source as (

    select * from {{ source('raw_netsuite_sa', 'notification_tracker_beta_searches_in_first_notice_map') }}

),

renamed as (

    select
        customization_id,
        notification_tracker_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
