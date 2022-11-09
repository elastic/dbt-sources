
with source as (

    select * from {{ source('raw_netsuite_sa', 'online_filing_configuration_history') }}

),

renamed as (

    select
        online_filing_configuration_id,
        _fivetran_deleted,
        _fivetran_synced,
        configuration,
        date_created,
        date_deleted,
        is_for_test,
        is_inactive,
        last_modified_date,
        nexus,
        online_filing_configuration_ex,
        online_filing_configuration_na,
        parent_id,
        process,
        partition_date

    from source

)

select * from renamed
