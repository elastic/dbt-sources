
with source as (

    select * from {{ source('raw_salesforce', 'domain_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        domain,
        domain_type,
        last_modified_by_id,
        last_modified_date,
        options_external_https,
        system_modstamp,
        cname_target,
        _fivetran_deleted,
        https_option,
        options_hsts_headers

    from source

)

select * from renamed
