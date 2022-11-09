
with source as (

    select * from {{ source('raw_netsuite', 'deleted_records') }}

),

renamed as (

    select
        custom_record_type,
        date_deleted,
        entity_id,
        entity_name,
        is_custom_list,
        name,
        record_base_type,
        record_id,
        record_type_name

    from source

)

select * from renamed
