
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaign_verticals') }}

),

renamed as (

    select
        campaignvertical_id,
        _fivetran_deleted,
        _fivetran_synced,
        campaignvertical_extid,
        date_deleted,
        date_last_modified,
        description,
        isinactive,
        name

    from source

)

select * from renamed
