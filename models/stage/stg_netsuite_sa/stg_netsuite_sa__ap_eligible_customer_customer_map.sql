
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_eligible_customer_customer_map') }}

),

renamed as (

    select
        ap_eligible_customer_id,
        customer_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
