
with source as (

    select * from {{ source('raw_salesforce', 'brand_template') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        description,
        developer_name,
        is_active,
        last_modified_by_id,
        last_modified_date,
        name,
        namespace_prefix,
        system_modstamp,
        value

    from source

)

select * from renamed
