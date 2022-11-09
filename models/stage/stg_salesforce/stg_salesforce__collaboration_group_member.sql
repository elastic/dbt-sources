
with source as (

    select * from {{ source('raw_salesforce', 'collaboration_group_member') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        collaboration_group_id,
        collaboration_role,
        created_by_id,
        created_date,
        last_feed_access_date,
        last_modified_by_id,
        last_modified_date,
        member_id,
        network_id,
        notification_frequency,
        system_modstamp

    from source

)

select * from renamed
