
with source as (

    select * from {{ source('raw_salesforce', 'static_resource') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        body_length,
        cache_control,
        content_type,
        created_by_id,
        created_date,
        description,
        last_modified_by_id,
        last_modified_date,
        name,
        namespace_prefix,
        system_modstamp

    from source

)

select * from renamed
