
with source as (

    select * from {{ source('raw_netsuite', 'caseissue_history') }}

),

renamed as (

    select
        case_issue_extid,
        case_issue_id,
        date_last_modified,
        description,
        is_inactive,
        name

    from source

)

select * from renamed
