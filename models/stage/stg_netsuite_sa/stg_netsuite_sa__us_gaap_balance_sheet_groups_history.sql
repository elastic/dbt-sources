
with source as (

    select * from {{ source('raw_netsuite_sa', 'us_gaap_balance_sheet_groups_history') }}

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
        us_gaap_balance_sheet_group_ex,
        partition_date

    from source

)

select * from renamed
