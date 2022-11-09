
with source as (

    select * from {{ source('raw_salesforce', 'approval_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        approve_comment,
        created_by_id,
        created_date,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        owner_id,
        parent_id,
        request_comment,
        status,
        system_modstamp

    from source

)

select * from renamed
