
with source as (

    select * from {{ source('raw_netsuite_sa', 'one_status_code') }}

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
        one_status_code_extid

    from source

)

select * from renamed
