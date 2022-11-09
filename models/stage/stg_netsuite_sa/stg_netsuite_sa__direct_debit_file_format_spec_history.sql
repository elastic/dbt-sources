
with source as (

    select * from {{ source('raw_netsuite_sa', 'direct_debit_file_format_spec_history') }}

),

renamed as (

    select
        direct_debit_file_format_sp_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        direct_debit_file_format_sp_ex,
        direct_debit_format_id,
        is_inactive,
        last_modified_date,
        parent_id,
        partition_date

    from source

)

select * from renamed
