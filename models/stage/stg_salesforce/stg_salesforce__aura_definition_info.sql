
with source as (

    select * from {{ source('raw_salesforce', 'aura_definition_info') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        aura_definition_bundle_info_id,
        aura_definition_id,
        def_type,
        developer_name,
        durable_id,
        format,
        last_modified_date,
        namespace_prefix,
        source,
        _fivetran_deleted

    from source

)

select * from renamed
