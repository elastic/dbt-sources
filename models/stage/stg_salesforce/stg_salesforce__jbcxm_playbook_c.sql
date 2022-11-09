
with source as (

    select * from {{ source('raw_salesforce', 'jbcxm_playbook_c') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        created_by_id,
        created_date,
        currency_iso_code,
        is_deleted,
        jbcxm_active_c,
        jbcxm_ctatype_c,
        jbcxm_description_c,
        jbcxm_entity_type_c,
        jbcxm_play_book_type_c,
        jbcxm_relationship_type_c,
        jbcxm_sync_c,
        jbcxm_tasks_count_c,
        jbcxm_type_c,
        jbcxm_used_count_c,
        last_modified_by_id,
        last_modified_date,
        name,
        owner_id,
        system_modstamp

    from source

)

select * from renamed
