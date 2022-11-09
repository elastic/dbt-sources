
with source as (

    select * from {{ source('raw_netsuite_sa', 'citibank_integration_account_history') }}

),

renamed as (

    select
        citibank_integration_accoun_id,
        _fivetran_deleted,
        _fivetran_synced,
        citibank_integration_accoun_ex,
        date_created,
        date_deleted,
        is_inactive,
        last_modified_date,
        parent_id,
        reference_0,
        partition_date

    from source

)

select * from renamed
