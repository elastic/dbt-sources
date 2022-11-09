
with source as (

    select * from {{ source('raw_salesforce', 'content_asset_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        content_document_id,
        created_by_id,
        created_date,
        developer_name,
        is_deleted,
        language,
        last_modified_by_id,
        last_modified_date,
        master_label,
        namespace_prefix,
        system_modstamp,
        is_visible_by_external_users,
        _fivetran_deleted

    from source

)

select * from renamed
