
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaignoffer_history') }}

),

renamed as (

    select
        campaign_offer_id,
        _fivetran_deleted,
        _fivetran_synced,
        campaign_offer_extid,
        date_deleted,
        date_last_modified,
        description,
        is_inactive,
        name,
        partition_date

    from source

)

select * from renamed
