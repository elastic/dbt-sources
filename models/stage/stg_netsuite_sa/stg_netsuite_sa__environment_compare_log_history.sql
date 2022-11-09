
with source as (

    select * from {{ source('raw_netsuite_sa', 'environment_compare_log_history') }}

),

renamed as (

    select
        environment_compare_log_id,
        _fivetran_deleted,
        _fivetran_synced,
        bundles_excluded,
        bundles_included,
        change_request_id,
        compare_filters,
        comparison_objective_id,
        comparison_type,
        date_0,
        date_created,
        date_deleted,
        different_records_count,
        environment_compare_log_extid,
        environment_compare_log_name,
        is_inactive,
        last_modified_date,
        parent_id,
        resolution,
        sandbox_source,
        sandbox_target,
        source_account,
        status_id,
        target_account,
        user_id,
        partition_date

    from source

)

select * from renamed
