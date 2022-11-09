
with source as (

    select * from {{ source('raw_salesforce', 'category_data') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        category_node_id,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        related_sobject_id,
        system_modstamp

    from source

)

select * from renamed
