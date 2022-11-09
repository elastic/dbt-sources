
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaign_categories_history') }}

),

renamed as (

    select
        campaigncategory_id,
        _fivetran_synced,
        campaigncategory_extid,
        date_last_modified,
        default_campaign_id,
        description,
        is_available_externally,
        isinactive,
        name,
        parent_id,
        _fivetran_deleted,
        date_deleted,
        partition_date

    from source

)

select * from renamed
