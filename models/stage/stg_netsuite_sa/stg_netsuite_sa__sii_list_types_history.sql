
with source as (

    select * from {{ source('raw_netsuite_sa', 'sii_list_types_history') }}

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
        sii_list_types_extid,
        partition_date

    from source

)

select * from renamed
