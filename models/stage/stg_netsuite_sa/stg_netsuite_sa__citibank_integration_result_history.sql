
with source as (

    select * from {{ source('raw_netsuite_sa', 'citibank_integration_result_history') }}

),

renamed as (

    select
        citibank_integration_result_id,
        _fivetran_deleted,
        _fivetran_synced,
        citibank_integration_result_ex,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        payment_file_id,
        status,
        endtoend_identification,
        partition_date

    from source

)

select * from renamed
