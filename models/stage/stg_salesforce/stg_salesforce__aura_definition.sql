
with source as (

    select * from {{ source('raw_salesforce', 'aura_definition') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        aura_definition_bundle_id,
        created_by_id,
        created_date,
        def_type,
        format,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        source,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
