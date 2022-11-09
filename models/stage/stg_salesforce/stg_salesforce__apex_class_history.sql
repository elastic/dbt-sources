
with source as (

    select * from {{ source('raw_salesforce', 'apex_class_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_deleted,
        _fivetran_synced,
        api_version,
        body,
        body_crc,
        created_by_id,
        created_date,
        is_valid,
        last_modified_by_id,
        last_modified_date,
        length_without_comments,
        name,
        namespace_prefix,
        status,
        system_modstamp

    from source

)

select * from renamed
