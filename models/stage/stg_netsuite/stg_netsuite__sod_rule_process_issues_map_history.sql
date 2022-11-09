
with source as (

    select * from {{ source('raw_netsuite', 'sod_rule_process_issues_map_history') }}

),

renamed as (

    select
        process_issue_id,
        sod_rule_id

    from source

)

select * from renamed
