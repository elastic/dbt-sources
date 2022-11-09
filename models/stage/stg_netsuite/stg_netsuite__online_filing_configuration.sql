
with source as (

    select * from {{ source('raw_netsuite', 'online_filing_configuration') }}

),

renamed as (

    select
        configuration,
        date_created,
        is_for_test,
        is_inactive,
        last_modified_date,
        nexus,
        online_filing_configuration_ex,
        online_filing_configuration_id,
        online_filing_configuration_na,
        parent_id,
        process

    from source

)

select * from renamed
