
with source as (

    select * from {{ source('raw_salesforce', 'support_article_data_category_selection') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        data_category_group_name,
        data_category_name,
        is_deleted,
        parent_id,
        system_modstamp

    from source

)

select * from renamed
