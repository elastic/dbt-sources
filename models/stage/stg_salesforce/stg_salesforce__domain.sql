
with source as (

    select * from {{ source('raw_salesforce', 'domain') }}

),

renamed as (

    select
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
        options_hsts_headers,
        options_hsts_preload

    from source

)

select * from renamed
