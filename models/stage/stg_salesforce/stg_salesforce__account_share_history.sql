
with source as (

    select * from {{ source('raw_salesforce', 'account_share_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        account_access_level,
        account_id,
        case_access_level,
        contact_access_level,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        opportunity_access_level,
        row_cause,
        user_or_group_id,
        _fivetran_deleted

    from source

)

select * from renamed
