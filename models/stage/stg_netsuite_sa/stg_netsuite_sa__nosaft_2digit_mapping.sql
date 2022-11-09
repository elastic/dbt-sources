
with source as (

    select * from {{ source('raw_netsuite_sa', 'nosaft_2digit_mapping') }}

),

renamed as (

    select
        nosaft_2digit_mapping_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        mapping_category_id,
        mapping_key,
        mapping_value_id,
        nosaft_2digit_mapping_extid,
        parent_id

    from source

)

select * from renamed
