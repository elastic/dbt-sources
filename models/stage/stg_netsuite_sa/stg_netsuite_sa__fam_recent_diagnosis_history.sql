
with source as (

    select * from {{ source('raw_netsuite_sa', 'fam_recent_diagnosis_history') }}

),

renamed as (

    select
        fam_recent_diagnosis_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        fam_recent_diagnosis_extid,
        fam_recent_diagnosis_name,
        is_inactive,
        last_modified_date,
        last_remedy_execution,
        last_scan,
        parent_id,
        remedy_triggered_by_id,
        requires_action,
        partition_date

    from source

)

select * from renamed
