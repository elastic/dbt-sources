
with source as (

    select * from {{ source('raw_netsuite_sa', 'sod_rule_process_issues_map') }}

),

renamed as (

    select
        process_issue_id,
        sod_rule_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
