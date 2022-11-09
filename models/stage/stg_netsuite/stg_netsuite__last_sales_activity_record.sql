
with source as (

    select * from {{ source('raw_netsuite', 'last_sales_activity_record') }}

),

renamed as (

    select
        date_created,
        entityopp_id,
        is_inactive,
        last_modified_date,
        last_sales_activity,
        last_sales_activity_record_ext,
        last_sales_activity_record_id,
        lsa_link,
        lsa_link_name,
        mode_0,
        parent_id

    from source

)

select * from renamed
