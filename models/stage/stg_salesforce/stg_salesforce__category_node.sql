
with source as (

    select * from {{ source('raw_salesforce', 'category_node') }}

),

renamed as (

    select
        id,
        _fivetran_deleted,
        _fivetran_synced,
        created_by_id,
        created_date,
        last_modified_by_id,
        last_modified_date,
        master_label,
        parent_id,
        sort_order,
        sort_style,
        system_modstamp

    from source

)

select * from renamed
