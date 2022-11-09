
with source as (

    select * from {{ source('raw_salesforce', 'domain_site') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        domain_id,
        last_modified_by_id,
        last_modified_date,
        path_prefix,
        site_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
