
with source as (

    select * from {{ source('raw_salesforce', 'ffirule_click_link_managed_job_c_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffirule_apex_job_id_c,
        ffirule_click_link_job_c,
        ffirule_source_object_c,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
