
with source as (

    select * from {{ source('raw_netsuite', 'us_gaap_balance_sheet_groups_history') }}

),

renamed as (

    select
        date_created,
        is_record_inactive,
        last_modified_date,
        list_id,
        list_item_name,
        us_gaap_balance_sheet_group_ex

    from source

)

select * from renamed
