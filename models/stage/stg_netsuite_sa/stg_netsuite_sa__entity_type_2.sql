
with source as (

    select * from {{ source('raw_netsuite_sa', 'entity_type_2') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        entity_type_2_extid,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
