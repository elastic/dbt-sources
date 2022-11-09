
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_eligible_customer') }}

),

renamed as (

    select
        ap_eligible_customer_id,
        _fivetran_deleted,
        _fivetran_synced,
        ap_eligible_customer_extid,
        date_created,
        date_deleted,
        description,
        group_0,
        is_inactive,
        label,
        last_modified_date,
        parent_id,
        promotion_code_id,
        saved_search_id,
        type_0

    from source

)

select * from renamed
