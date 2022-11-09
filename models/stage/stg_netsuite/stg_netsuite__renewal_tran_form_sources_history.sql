
with source as (

    select * from {{ source('raw_netsuite', 'renewal_tran_form_sources_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        renewal_tran_form_sources_exti

    from source

)

select * from renamed
