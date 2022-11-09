
with source as (

    select * from {{ source('raw_netsuite_sa', 'nosaft_income_statement_rf132_history') }}

),

renamed as (

    select
        nosaft_income_statement_rf1_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        grouping_code,
        grouping_code_description,
        is_inactive,
        last_modified_date,
        nosaft_income_statement_rf1_ex,
        parent_id,
        partition_date

    from source

)

select * from renamed
