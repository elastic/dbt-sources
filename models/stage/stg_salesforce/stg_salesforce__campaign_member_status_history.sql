
with source as (

    select * from {{ source('raw_salesforce', 'campaign_member_status_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        campaign_id,
        created_by_id,
        created_date,
        has_responded,
        is_default,
        is_deleted,
        label,
        last_modified_by_id,
        last_modified_date,
        sort_order,
        system_modstamp

    from source

)

select * from renamed
