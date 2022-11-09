
with source as (

    select * from {{ source('raw_salesforce', 'duplicate_job_matching_rule_definition_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        created_by_id,
        created_date,
        duplicate_job_definition_id,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        matching_rule_id,
        system_modstamp,
        _fivetran_deleted

    from source

)

select * from renamed
