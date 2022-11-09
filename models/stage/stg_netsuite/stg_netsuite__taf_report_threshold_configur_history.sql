
with source as (

    select * from {{ source('raw_netsuite', 'taf_report_threshold_configur_history') }}

),

renamed as (

    select
        date_created,
        governance_limit,
        is_inactive,
        last_modified_date,
        parent_id,
        runtime_limit,
        search_results_limit,
        taf_report_threshold_config_ex,
        taf_report_threshold_config_id,
        taf_report_threshold_config_na

    from source

)

select * from renamed
