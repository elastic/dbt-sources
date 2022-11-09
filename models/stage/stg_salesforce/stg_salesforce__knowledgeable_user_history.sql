
with source as (

    select * from {{ source('raw_salesforce', 'knowledgeable_user_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        network_id,
        raw_rank,
        system_modstamp,
        topic_id,
        user_id,
        _fivetran_deleted

    from source

)

select * from renamed
