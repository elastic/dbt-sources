
with source as (

    select * from {{ source('raw_salesforce', 'cors_whitelist_entry') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
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
        url_pattern,
        _fivetran_deleted

    from source

)

select * from renamed