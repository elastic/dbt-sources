
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_rule_processing_status_history') }}

),

renamed as (

    select
        sod_rule_processing_status_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        employees_and_role_evaluation,
        is_inactive,
        last_modified_date,
        parent_id,
        sod_rule_id,
        sod_rule_processing_status_ext,
        status_id,
        partition_date

    from source

)

select * from renamed
