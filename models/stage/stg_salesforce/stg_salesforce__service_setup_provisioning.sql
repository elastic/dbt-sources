
with source as (

    select * from {{ source('raw_salesforce', 'service_setup_provisioning') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        job_name,
        last_modified_by_id,
        last_modified_date,
        name,
        status,
        system_modstamp,
        task_context,
        task_name

    from source

)

select * from renamed
