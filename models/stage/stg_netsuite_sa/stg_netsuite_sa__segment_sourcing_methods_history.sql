
with source as (

    select * from {{ source('raw_netsuite_sa', 'segment_sourcing_methods_history') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name,
        segment_sourcing_methods_extid,
        partition_date

    from source

)

select * from renamed
