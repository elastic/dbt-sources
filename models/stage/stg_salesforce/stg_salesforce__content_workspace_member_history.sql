
with source as (

    select * from {{ source('raw_salesforce', 'content_workspace_member_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        content_workspace_id,
        content_workspace_permission_id,
        created_by_id,
        created_date,
        member_id,
        member_type,
        _fivetran_deleted

    from source

)

select * from renamed
