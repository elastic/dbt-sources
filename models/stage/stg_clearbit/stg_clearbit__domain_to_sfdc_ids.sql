
with source as (

    select * from {{ source('raw_clearbit', 'domain_to_sfdc_ids') }}

),

renamed as (

    select
        domain,
        accountid

    from source

)

select * from renamed
