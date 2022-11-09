
with source as (

    select * from {{ source('raw_netsuite_sa', 'revenue_deal_type') }}

),

renamed as (

    select
        revenue_deal_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        revenue_deal_type_extid,
        revenue_deal_type_name

    from source

)

select * from renamed
