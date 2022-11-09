
with source as (

    select * from {{ source('raw_netsuite_sa', 'ap_saved_search_select_setup') }}

),

renamed as (

    select
        ap_saved_search_select_setu_id,
        _fivetran_deleted,
        _fivetran_synced,
        ap_saved_search_select_setu_ex,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        record_type_id,
        saved_search_id,
        search_type

    from source

)

select * from renamed
