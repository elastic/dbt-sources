
with source as (

    select * from {{ source('raw_netsuite_sa', 'renewal_tran_form_sources') }}

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
        renewal_tran_form_sources_exti

    from source

)

select * from renamed
