
with source as (

    select * from {{ source('raw_netsuite_sa', 'assign_to_which_coupons_2') }}

),

renamed as (

    select
        assign_to_which_coupons_2_id,
        _fivetran_deleted,
        _fivetran_synced,
        assign_to_which_coupons_2_exti,
        assign_to_which_coupons_2_name,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
