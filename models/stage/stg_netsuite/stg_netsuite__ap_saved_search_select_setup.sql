
with source as (

    select * from {{ source('raw_netsuite', 'ap_saved_search_select_setup') }}

),

renamed as (

    select
        ap_saved_search_select_setu_ex,
        ap_saved_search_select_setu_id,
        date_created,
        is_inactive,
        last_modified_date,
        parent_id,
        record_type_id,
        saved_search_id,
        search_type

    from source

)

select * from renamed
