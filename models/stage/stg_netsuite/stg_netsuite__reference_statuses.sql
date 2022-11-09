
with source as (

    select * from {{ source('raw_netsuite', 'reference_statuses') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        reference_statuses_extid

    from source

)

select * from renamed