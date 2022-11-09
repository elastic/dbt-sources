
with source as (

    select * from {{ source('raw_netsuite', 'localization_processing_resul') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        localization_processing_res_ex

    from source

)

select * from renamed
