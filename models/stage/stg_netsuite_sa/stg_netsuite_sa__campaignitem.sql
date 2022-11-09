
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaignitem') }}

),

renamed as (

    select
        campaign_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        item_id

    from source

)

select * from renamed
