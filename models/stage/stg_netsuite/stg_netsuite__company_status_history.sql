
with source as (

    select * from {{ source('raw_netsuite', 'company_status_history') }}

),

renamed as (

    select
        company_status_extid,
        company_status_id,
        date_last_modified,
        description,
        isinactive,
        name,
        probability,
        readonly

    from source

)

select * from renamed
