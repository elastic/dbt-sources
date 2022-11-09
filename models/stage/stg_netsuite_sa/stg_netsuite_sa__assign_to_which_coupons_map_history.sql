
with source as (

    select * from {{ source('raw_netsuite_sa', 'assign_to_which_coupons_map_history') }}

),

renamed as (

    select
        assign_to_which_coupons_2_id,
        item_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
