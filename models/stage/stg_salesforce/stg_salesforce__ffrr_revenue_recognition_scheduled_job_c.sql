
with source as (

    select * from {{ source('raw_salesforce', 'ffrr_revenue_recognition_scheduled_job_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        ffrr_cron_expression_c,
        ffrr_cron_recognition_c,
        ffrr_description_c,
        ffrr_group_c,
        ffrr_group_name_c,
        ffrr_job_id_c,
        ffrr_scheduled_c,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        last_referenced_date,
        last_viewed_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
