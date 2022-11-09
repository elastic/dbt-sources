
with source as (

    select * from {{ source('raw_salesforce', 'duplicate_job_matching_rule') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        duplicate_job_id,
        duplicate_job_match_rule_def_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        matching_rule_boolean_filter,
        matching_rule_description,
        matching_rule_name,
        name,
        system_modstamp

    from source

)

select * from renamed
