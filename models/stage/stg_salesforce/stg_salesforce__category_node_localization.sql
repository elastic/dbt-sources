
with source as (

    select * from {{ source('raw_salesforce', 'category_node_localization') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        category_node_id,
        created_by_id,
        created_date,
        language,
        last_modified_by_id,
        last_modified_date,
        namespace_prefix,
        system_modstamp,
        value

    from source

)

select * from renamed
