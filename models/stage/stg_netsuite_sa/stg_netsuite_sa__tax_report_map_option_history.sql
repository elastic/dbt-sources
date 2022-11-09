
with source as (

    select * from {{ source('raw_netsuite_sa', 'tax_report_map_option_history') }}

),

renamed as (

    select
        tax_report_map_option_id,
        _fivetran_deleted,
        _fivetran_synced,
        category_0,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        meta,
        parent_id,
        tax_report_map_option_extid,
        tax_report_map_option_name,
        value_0,
        partition_date

    from source

)

select * from renamed
