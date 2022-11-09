
with source as (

    select * from {{ source('raw_salesforce', 'list_view') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        developer_name,
        is_soql_compatible,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        namespace_prefix,
        sobject_type,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
