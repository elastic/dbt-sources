
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaign_search_engine') }}

),

renamed as (

    select
        search_engine_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        date_last_modified,
        description,
        isinactive,
        name,
        search_engine_extid

    from source

)

select * from renamed
