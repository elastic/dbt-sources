
with source as (

    select * from {{ source('raw_netsuite', 'tax_report_map_option_history') }}

),

renamed as (

    select
        category_0,
        date_created,
        is_inactive,
        last_modified_date,
        meta,
        parent_id,
        tax_report_map_option_extid,
        tax_report_map_option_id,
        tax_report_map_option_name,
        value_0

    from source

)

select * from renamed
