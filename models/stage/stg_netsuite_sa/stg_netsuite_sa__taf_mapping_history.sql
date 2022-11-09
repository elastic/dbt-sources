
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_mapping_history') }}

),

renamed as (

    select
        taf_mapping_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        grouping_code,
        is_inactive,
        last_modified_date,
        mapping_category_id,
        mapping_input_value,
        mapping_key,
        mapping_value_id,
        parent_id,
        taf_mapping_extid,
        partition_date

    from source

)

select * from renamed
