
with source as (

    select * from {{ source('raw_salesforce', 'user_share_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        is_active,
        last_modified_by_id,
        last_modified_date,
        row_cause,
        user_access_level,
        user_id,
        user_or_group_id,
        _fivetran_deleted

    from source

)

select * from renamed
