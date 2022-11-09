
with source as (

    select * from {{ source('raw_salesforce', 'learndot_learndot_job_queue_c') }}

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
        learndot_modified_c,
        learndot_salesforce_contact_c,
        learndot_status_c,
        learndot_type_c,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
