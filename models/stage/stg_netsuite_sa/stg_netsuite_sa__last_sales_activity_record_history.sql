
with source as (

    select * from {{ source('raw_netsuite_sa', 'last_sales_activity_record_history') }}

),

renamed as (

    select
        last_sales_activity_record_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        entityopp_id,
        is_inactive,
        last_modified_date,
        last_sales_activity,
        last_sales_activity_record_ext,
        lsa_link,
        lsa_link_name,
        mode_0,
        parent_id,
        partition_date

    from source

)

select * from renamed
