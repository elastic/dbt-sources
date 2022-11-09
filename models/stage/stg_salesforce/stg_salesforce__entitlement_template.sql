
with source as (

    select * from {{ source('raw_salesforce', 'entitlement_template') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        business_hours_id,
        cases_per_entitlement,
        created_by_id,
        created_date,
        is_per_incident,
        last_modified_by_id,
        last_modified_date,
        name,
        namespace_prefix,
        sla_process_id,
        system_modstamp,
        term,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
