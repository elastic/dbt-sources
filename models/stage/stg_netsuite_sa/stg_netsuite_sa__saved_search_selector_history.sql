
with source as (

    select * from {{ source('raw_netsuite_sa', 'saved_search_selector_history') }}

),

renamed as (

    select
        saved_search_selector_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        saved_search_selector_extid,
        saved_search_selector_name,
        search_id,
        partition_date

    from source

)

select * from renamed
