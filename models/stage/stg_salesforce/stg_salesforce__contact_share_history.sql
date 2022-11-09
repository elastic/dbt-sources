
with source as (

    select * from {{ source('raw_salesforce', 'contact_share_history') }}

),

renamed as (

    select
        partitiontime,
        id,
        _fivetran_synced,
        contact_access_level,
        contact_id,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        row_cause,
        user_or_group_id,
        _fivetran_deleted

    from source

)

select * from renamed
