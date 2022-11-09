
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaign_audiences_history') }}

),

renamed as (

    select
        campaignaudience_id,
        _fivetran_deleted,
        _fivetran_synced,
        campaignaudience_extid,
        date_deleted,
        date_last_modified,
        description,
        isinactive,
        name,
        partition_date

    from source

)

select * from renamed
