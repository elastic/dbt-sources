
with source as (

    select * from {{ source('raw_salesforce', 'folder') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        access_type,
        created_by_id,
        created_date,
        developer_name,
        is_readonly,
        last_modified_by_id,
        last_modified_date,
        name,
        namespace_prefix,
        system_modstamp,
        type,
        parent_id

    from source

)

select * from renamed
