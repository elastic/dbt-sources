
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_depreciation_rate_tables') }}

),

renamed as (

    select
        list_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_depreciation_rate_table_ex,
        is_record_inactive,
        last_modified_date,
        list_item_name

    from source

)

select * from renamed
