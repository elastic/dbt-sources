
with source as (

    select * from {{ source('raw_salesforce', 'attachment_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        body_length,
        content_type,
        created_by_id,
        created_date,
        description,
        is_deleted,
        is_private,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        parent_id,
        system_modstamp

    from source

)

select * from renamed
