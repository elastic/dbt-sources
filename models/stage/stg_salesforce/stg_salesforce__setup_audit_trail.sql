
with source as (

    select * from {{ source('raw_salesforce', 'setup_audit_trail') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        action,
        created_by_id,
        created_date,
        delegate_user,
        display,
        responsible_namespace_prefix,
        section,
        created_by_context,
        created_by_issuer,
        _fivetran_deleted

    from source

)

select * from renamed
