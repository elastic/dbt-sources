
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_rule') }}

),

renamed as (

    select
        sod_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        base_permission_text_match,
        block_conflict,
        conflict_permission_text_matc,
        date_created,
        date_deleted,
        description,
        is_inactive,
        is_predefined,
        last_modified_date,
        memo,
        parent_id,
        permission_scriptid_base,
        permission_scriptid_conflict,
        process_issues_text,
        processing_status_id,
        sod_rule_extid,
        sod_rule_name,
        status_id,
        stop_retroactive,
        external_id,
        old_name,
        process_id,
        external_id_custom

    from source

)

select * from renamed
