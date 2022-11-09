
with source as (

    select * from {{ source('raw_salesforce', 'chatter_activity_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        comment_count,
        comment_received_count,
        influence_raw_rank,
        like_received_count,
        network_id,
        parent_id,
        post_count,
        system_modstamp

    from source

)

select * from renamed
