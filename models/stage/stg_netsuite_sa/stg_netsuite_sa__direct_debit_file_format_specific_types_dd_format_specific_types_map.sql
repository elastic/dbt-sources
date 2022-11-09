
with source as (

    select * from {{ source('raw_netsuite_sa', 'direct_debit_file_format_specific_types_dd_format_specific_types_map') }}

),

renamed as (

    select
        direct_debit_file_format_sp_id,
        direct_debit_type_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
