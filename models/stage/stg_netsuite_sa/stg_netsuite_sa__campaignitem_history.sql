
with source as (

    select * from {{ source('raw_netsuite_sa', 'campaignitem_history') }}

),

renamed as (

    select
        campaign_id,
        fivetran_index,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        item_id,
        partition_date

    from source

)

select * from renamed
