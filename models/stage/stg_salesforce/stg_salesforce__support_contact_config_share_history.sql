
with source as (

    select * from {{ source('raw_salesforce', 'support_contact_config_share_history') }}

),

renamed as (

    select
        partitiontime,
        _fivetran_synced,
        access_level,
        id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        parent_id,
        row_cause,
        user_or_group_id,
        _fivetran_deleted

    from source

)

select * from renamed
