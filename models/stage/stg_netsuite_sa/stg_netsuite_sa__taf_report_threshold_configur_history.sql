
with source as (

    select * from {{ source('raw_netsuite_sa', 'taf_report_threshold_configur_history') }}

),

renamed as (

    select
        taf_report_threshold_config_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        governance_limit,
        is_inactive,
        last_modified_date,
        parent_id,
        runtime_limit,
        search_results_limit,
        taf_report_threshold_config_ex,
        taf_report_threshold_config_na,
        partition_date

    from source

)

select * from renamed
