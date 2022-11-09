
with source as (

    select * from {{ source('raw_netsuite_sa', 'nosaft_income_statement_mappi') }}

),

renamed as (

    select
        nosaft_income_statement_map_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        mapping_category_id,
        mapping_key,
        mapping_value_id,
        nosaft_income_statement_map_ex,
        parent_id

    from source

)

select * from renamed
