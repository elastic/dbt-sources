
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule') }}

),

renamed as (

    select
        base_permission_text_match,
        block_conflict,
        conflict_permission_text_matc,
        date_created,
        description,
        is_inactive,
        is_predefined,
        last_modified_date,
        memo,
        parent_id,
        permission_scriptid_base,
        permission_scriptid_conflict,
        processing_status_id,
        process_issues_text,
        sod_rule_extid,
        sod_rule_id,
        sod_rule_name,
        status_id,
        stop_retroactive

    from source

)

select * from renamed
