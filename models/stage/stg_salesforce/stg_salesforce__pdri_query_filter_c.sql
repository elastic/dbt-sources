
with source as (

    select * from {{ source('raw_salesforce', 'pdri_query_filter_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        last_activity_date,
        last_modified_by_id,
        last_modified_date,
        name,
        pdri_deployment_c,
        system_modstamp,
        pdri_object_name_c,
        pdri_filter_c

    from source

)

select * from renamed