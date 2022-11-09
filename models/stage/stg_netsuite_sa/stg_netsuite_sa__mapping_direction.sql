
with source as (

    select * from {{ source('raw_netsuite_sa', 'mapping_direction') }}

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
        mapping_direction_extid

    from source

)

select * from renamed