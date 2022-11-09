
with source as (

    select * from {{ source('raw_netsuite', 'process_issue_audited_by_map_history') }}

),

renamed as (

    select
        employee_id,
        process_issue_id

    from source

)

select * from renamed
