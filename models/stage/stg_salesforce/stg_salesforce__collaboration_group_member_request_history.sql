
with source as (

    select * from {{ source('raw_salesforce', 'collaboration_group_member_request_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        collaboration_group_id,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        requester_id,
        response_message,
        status,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
