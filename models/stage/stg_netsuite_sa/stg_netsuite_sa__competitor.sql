
with source as (

    select * from {{ source('raw_netsuite_sa', 'competitor') }}

),

renamed as (

    select
        competitor_id,
        _fivetran_deleted,
        _fivetran_synced,
        competitor_extid,
        date_deleted,
        date_last_modified,
        description,
        is_inactive,
        name,
        products_services,
        strategy,
        strengths,
        url,
        weaknesses

    from source

)

select * from renamed
