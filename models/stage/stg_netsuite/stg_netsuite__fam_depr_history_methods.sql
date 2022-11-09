
with source as (

    select * from {{ source('raw_netsuite', 'fam_depr_history_methods') }}

),

renamed as (

    select
        date_created,
        fam_depr_history_methods_extid,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name

    from source

)

select * from renamed
