
with source as (

    select * from {{ source('raw_salesforce', 'opportunity_share_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        opportunity_access_level,
        opportunity_id,
        row_cause,
        user_or_group_id,
        _fivetran_deleted

    from source

)

select * from renamed
