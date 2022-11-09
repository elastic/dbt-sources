
with source as (

    select * from {{ source('raw_salesforce', 'scontrol_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        body_length,
        content_source,
        created_by_id,
        created_date,
        description,
        developer_name,
        encoding_key,
        filename,
        html_wrapper,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        namespace_prefix,
        supports_caching,
        system_modstamp

    from source

)

select * from renamed
