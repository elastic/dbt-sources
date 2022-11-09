
with source as (

    select * from {{ source('raw_salesforce', 'case_share') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        case_access_level,
        case_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        row_cause,
        user_or_group_id,
        _fivetran_deleted

    from source

)

select * from renamed
