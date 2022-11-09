
with source as (

    select * from {{ source('raw_netsuite_sa', 'caseissue_history') }}

),

renamed as (

    select
        case_issue_id,
        _fivetran_deleted,
        _fivetran_synced,
        case_issue_extid,
        date_deleted,
        date_last_modified,
        description,
        is_inactive,
        name,
        partition_date

    from source

)

select * from renamed
