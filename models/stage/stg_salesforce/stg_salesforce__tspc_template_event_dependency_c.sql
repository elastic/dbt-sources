
with source as (

    select * from {{ source('raw_salesforce', 'tspc_template_event_dependency_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        system_modstamp,
        tspc_description_c,
        tspc_eid_c,
        tspc_hash_c,
        tspc_is_required_c,
        tspc_source_c,
        tspc_target_c

    from source

)

select * from renamed
