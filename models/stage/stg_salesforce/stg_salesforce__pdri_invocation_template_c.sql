
with source as (

    select * from {{ source('raw_salesforce', 'pdri_invocation_template_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        pdri_active_c,
        pdri_endpoint_url_c,
        pdri_type_c,
        system_modstamp

    from source

)

select * from renamed
