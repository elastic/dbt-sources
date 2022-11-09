
with source as (

    select * from {{ source('raw_netsuite_sa', 'last_used_mask_values_history') }}

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
        last_used_mask_values_extid,
        list_item_name,
        partition_date

    from source

)

select * from renamed
