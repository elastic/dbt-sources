
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_mapping_category_filter_map_history') }}

),

renamed as (

    select
        taf_mapping_category_id,
        taf_mapping_filter_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
