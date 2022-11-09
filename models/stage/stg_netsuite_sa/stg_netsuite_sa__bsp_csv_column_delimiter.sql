
with source as (

    select * from {{ source('raw_netsuite_sa', 'bsp_csv_column_delimiter') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        bsp_csv_column_delimiter_extid,
        date_created,
        date_deleted,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
