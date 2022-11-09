
with source as (

    select * from {{ source('raw_netsuite_sa', 'citibank_integration_type_cod_history') }}

),

renamed as (

    select
        citibank_integration_type_c_id,
        _fivetran_deleted,
        _fivetran_synced,
        cb_type,
        citibank_integration_type_c_ex,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        ns_type,
        parent_id,
        partition_date

    from source

)

select * from renamed
